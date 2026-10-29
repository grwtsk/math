# Verification target: FDeriv Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12ef16d4a4c2af8dae91ce67d279a1738a69c25c",
  "lexical_observation_count": 140,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/FDerivBasicPublic.lean/index.md) · [Full source](../../../../RealFunctions/FDerivBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12ef16d4a4c2af8dae91ce67d279a1738a69c25c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Asymptotics.Lemmas` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.TangentCone.DimOne` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [HasFDerivWithinAt.lim](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-lim.md) | 141 | `result-track:855c6472b6341e43d971670c8c810f47dde9d5edd2452e1774e6ae68bc0312e4` |
| 2 | `theorem` | [HasFDerivWithinAt.unique_on](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-unique-on.md) | 159 | `result-track:7d9633aead2552f9e76964515811d6ed4e88df5d533f11b5466669e7d3f00ad0` |
| 3 | `theorem` | [UniqueDiffWithinAt.eq](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/uniquediffwithinat-eq.md) | 166 | `result-track:8855d164b93050001777c2f9a8e8d26bb9495e20b2d0269c6b7700964dd77fc9` |
| 4 | `theorem` | [UniqueDiffOn.eq](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/uniquediffon-eq.md) | 170 | `result-track:4fb4d976a6d9a637e49daaa48a8b20dfa962881dcf5bf7d402c278a6610793c1` |
| 5 | `theorem` | [HasFDerivAt.unique](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-unique.md) | 174 | `result-track:c8c22e41cbf98c7edcb78032cebf2e76de2c67b41d76813c2139f4ffd87eea8c` |
| 6 | `theorem` | [HasFDerivAtFilter.mono](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-mono.md) | 194 | `result-track:cf6d4f77c59a347681d980eaf110e79994956fdac225e3815aca8ba353379062` |
| 7 | `theorem` | [HasFDerivWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-mono-of-mem-nhdswithin.md) | 198 | `result-track:4606b4cfe40ec87921cbef63d6dcbf4167ec2a188024c51fd7481cf7f8a95875` |
| 8 | `theorem` | [HasFDerivWithinAt.mono](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-mono.md) | 203 | `result-track:de277e6ffcf1c8389c766202b4d2ea5a6a5b6d6592e42b62744854f86a41e6eb` |
| 9 | `theorem` | [HasFDerivAt.hasFDerivAtFilter](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-hasfderivatfilter.md) | 207 | `result-track:9228b7db19d296f80b512644d332a3b083dcd5d10113b0c284d307288f50a525` |
| 10 | `theorem` | [HasFDerivAt.hasFDerivWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-hasfderivwithinat.md) | 212 | `result-track:0282d32fbfc5c24877977c099bc0dfee68d68ec00ebc1ca61dfa298ef93af259` |
| 11 | `theorem` | [HasFDerivWithinAt.differentiableWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-differentiablewithinat.md) | 216 | `result-track:21cb6b463513cfc9601606c38c7512190ad9369095662c3c6f1eb76b3fe914c9` |
| 12 | `theorem` | [HasFDerivAt.differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-differentiableat.md) | 221 | `result-track:afe3a703b759ad875cecc570714a7b64c81865b305a46195cca6e61a117099f7` |
| 13 | `theorem` | [hasFDerivWithinAt_univ](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-univ.md) | 225 | `result-track:bbe9857b479c20a6e23c1856050cf96e438d1c2c5e2af8d18d98e5e484d992eb` |
| 14 | `theorem` | [differentiableWithinAt_univ](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-univ.md) | 230 | `result-track:23b8ebcbd918783e95d7aa405361c3f286f00211b20ae8671b93e62a50c1d5fa` |
| 15 | `theorem` | [fderiv_zero_of_not_differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderiv-zero-of-not-differentiableat.md) | 234 | `result-track:3aed9ec6bd3f472812efdcd2f5cc27100c78f14f64fb23aa675c7a30a2d7bd40` |
| 16 | `theorem` | [hasFDerivWithinAt_of_mem_nhds](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-mem-nhds.md) | 238 | `result-track:620074cd3ebcf84198bd0694e26d917d2e25673a572ad8c66837bb3a16b992f4` |
| 17 | `lemma` | [hasFDerivWithinAt_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-isopen.md) | 242 | `result-track:a25ad9b3f248449c182a936902dbd5020a1ebec767fb540b667d22d898f453ec` |
| 18 | `theorem` | [hasFDerivWithinAt_insert_self](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-insert-self.md) | 247 | `result-track:3db75ff9615487d3bee6aad62c35f1f6637849a404094865511e0a64ffd861f4` |
| 19 | `theorem` | [HasFDerivWithinAt.of_insert](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-insert.md) | 255 | `result-track:e1d90eb54e1900e17396e1bdc28beaca7729954f984e279ea45ad6873da1bf86` |
| 20 | `theorem` | [hasFDerivWithinAt_insert](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-insert.md) | 260 | `result-track:61a6b7c1193ffc62f879f47743c1f55e4d34b90f3bbfc24342c5b26883d1954e` |
| 21 | `theorem` | [hasFDerivWithinAt_sdiff_singleton_self](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-sdiff-singleton-self.md) | 270 | `result-track:01b4de6237dde4d80d2e46b540cc761b5592e8d16beb8db69a6e18f14ad7ca8c` |
| 22 | `theorem` | [hasFDerivWithinAt_sdiff_singleton](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-sdiff-singleton.md) | 278 | `result-track:82869fc29efb32f21590e30e062c6dc070e53c8de142499a3dfe5471801ee1b9` |
| 23 | `theorem` | [HasFDerivWithinAt.empty](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-empty.md) | 286 | `result-track:db35646409b1680a512448812ea67aeae04ddaab1dd3ab78ff586eea2c8e6b82` |
| 24 | `theorem` | [DifferentiableWithinAt.empty](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-empty.md) | 290 | `result-track:4dac537affcf5420872600eb60f7e308801ab54dc898b1e892e9c58cf77846fe` |
| 25 | `theorem` | [differentiableOn_empty](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-empty.md) | 294 | `result-track:a490658f32225b497330f0e72eea4897315c690cd50b0d3ca2e2d4b031493bdd` |
| 26 | `theorem` | [HasFDerivWithinAt.of_finite](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-finite.md) | 296 | `result-track:ba94cfaf62e934c4f0675818ca099862fc4c83e14e27738e6f95c81aa10fbef6` |
| 27 | `theorem` | [DifferentiableWithinAt.of_finite](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-of-finite.md) | 301 | `result-track:361b3357f9e88815aa127cf16526b24052598c183cc6f6f41e229ee851e84cb9` |
| 28 | `theorem` | [HasFDerivWithinAt.singleton](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-singleton.md) | 306 | `result-track:67df2a24c379d2ec69afd9e4907465705e72589b264af73d82edd1b65ce99937` |
| 29 | `theorem` | [DifferentiableWithinAt.singleton](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-singleton.md) | 310 | `result-track:579751c5b4d7df3593459621b2c3c6e04f9a295834db55caa77b954fe9628bd3` |
| 30 | `theorem` | [HasFDerivWithinAt.of_subsingleton](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-subsingleton.md) | 314 | `result-track:dd3c8e2c75660c613eddf5fa618e6619b35d125dc4208a95d2069c1d03cc69af` |
| 31 | `theorem` | [DifferentiableWithinAt.of_subsingleton](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-of-subsingleton.md) | 318 | `result-track:b6f3cd3b34ad50560ffb540833cda69622d925efc538e981404ab4ae36abf56d` |
| 32 | `theorem` | [HasStrictFDerivAt.hasFDerivAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-hasfderivat.md) | 323 | `result-track:f6f83f7df3b5c0191204a7e88be3fd5da3de3b29823b67120e2ba033b53cb40f` |
| 33 | `theorem` | [HasStrictFDerivAt.differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-differentiableat.md) | 328 | `result-track:e9a19643b15fcf3f086a4ca46c73b9619c0bd30610804d2724c1226305f85960` |
| 34 | `theorem` | [HasFDerivAt.lim](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-lim.md) | 333 | `result-track:6616d3737c879eee1e0822c042699842e3c7a5bd8f97564c0ee04040538f2715` |
| 35 | `theorem` | [hasFDerivWithinAt_inter'](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-inter-source-edition-2.md) | 345 | `result-track:52c05e9f4e11f1c3e2d17b4204fdedaa386d4f9fc9c8ff04d5cadd4d435b524b` |
| 36 | `theorem` | [hasFDerivWithinAt_inter](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-inter.md) | 349 | `result-track:35f98eef0218ffbff5c78f7894838d23307f717968fa5a67649a10ad8ebf7b33` |
| 37 | `theorem` | [HasFDerivWithinAt.union](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-union.md) | 353 | `result-track:0a69b990ecbedd101a54375e2053f07fc4525d71e2a194ba8ff42a7fe2324293` |
| 38 | `theorem` | [HasFDerivWithinAt.hasFDerivAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-hasfderivat.md) | 358 | `result-track:c5b0550c5fae89b5b56f7c1aa3414dbebea052f8cd0738277337950cd152395a` |
| 39 | `theorem` | [DifferentiableWithinAt.differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-differentiableat.md) | 362 | `result-track:366e6e0dcf0e00b7d5e5bd5a851cd3bb000b366a6c64401bfad8b372ec6af18c` |
| 40 | `theorem` | [HasFDerivWithinAt.of_not_accPt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-not-accpt.md) | 368 | `result-track:31fd6f0b8e366c8739f2424952de6bb8bcd50b722a4e160cd0fde59e29bc2ef2` |
| 41 | `theorem` | [HasFDerivWithinAt.of_notMem_closure](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-of-notmem-closure.md) | 376 | `result-track:f4cab60e10b82b7063eb4998d9ff4eea7cf027427e7e1f9f475c34799544483a` |
| 42 | `theorem` | [fderivWithin_zero_of_not_accPt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-zero-of-not-accpt.md) | 379 | `result-track:38413720ff3e21bb65892db671f31a9818881446901ab5212d53abe799510d92` |
| 43 | `theorem` | [fderivWithin_zero_of_notMem_closure](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-zero-of-notmem-closure.md) | 383 | `result-track:10b5fcfbd60e1eeaf40634f636f0e5f84a96dfb6f9127bb18871e3e6d80a899a` |
| 44 | `theorem` | [fderivWithin_zero_of_not_uniqueDiffWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-zero-of-not-uniquediffwithinat.md) | 387 | `result-track:303d53f25c97855957f8777456f82220d671a7d45c4e1266f582fcd9ac29e5ef` |
| 45 | `theorem` | [DifferentiableWithinAt.hasFDerivWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-hasfderivwithinat.md) | 391 | `result-track:09a54fa7c2f1425dee8356209eaec5231ed2fca127d7cae5bfcb784ab45ec1e6` |
| 46 | `theorem` | [DifferentiableAt.hasFDerivAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-hasfderivat.md) | 397 | `result-track:f3128293110b3e9d6f94eea23a3d6a410f04bd3b3e23a381822d78cd83516399` |
| 47 | `theorem` | [DifferentiableOn.hasFDerivAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-hasfderivat.md) | 403 | `result-track:cf34e2a8b5305ef4d789abcb21a502405a4e1c09c7b380e69f8b8006740d20c8` |
| 48 | `theorem` | [DifferentiableOn.differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-differentiableat.md) | 407 | `result-track:5104cc57582caf0fa1fca8482b40c89bdfb8ccc1af95fbcb81df7368216bb93c` |
| 49 | `theorem` | [DifferentiableOn.eventually_differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-eventually-differentiableat.md) | 411 | `result-track:114b760309fc1e776be8e029281a72b50c5bdf796adc2d26229f06fc63eeeb37` |
| 50 | `theorem` | [HasFDerivAt.fderiv](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-fderiv.md) | 415 | `result-track:337904484d46e2b6f7fad5d6d67fa869d8d8016d780b701e988ce4da9df57bbd` |
| 51 | `theorem` | [fderiv_eq](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderiv-eq.md) | 421 | `result-track:12db64db978c830fc303f3b1a8f01a1c7c4eb792badb11556c240795645b08e2` |
| 52 | `theorem` | [HasFDerivWithinAt.fderivWithin](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-fderivwithin.md) | 426 | `result-track:08b7dbe82394508a538451f13502a49621196d4cebe2bca97b0c27c4f71d7540` |
| 53 | `theorem` | [DifferentiableWithinAt.mono](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-mono.md) | 432 | `result-track:7de1a9316b8003b32bc8c4c47ce22cba7ba14d0b8e06ff3dc24a18cc7761ea17` |
| 54 | `theorem` | [DifferentiableWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-mono-of-mem-nhdswithin.md) | 437 | `result-track:4a5a2c6954afe42629de4d6c5a71db1304481e479780bc35b359360bce70aa20` |
| 55 | `theorem` | [DifferentiableWithinAt.congr_nhds](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-congr-nhds-source-edition-2.md) | 442 | `result-track:70c94a82f7a72f6bcfa2f603253f1eb9cd39793cb74c9f1aef1d911777c83ae8` |
| 56 | `theorem` | [differentiableWithinAt_congr_nhds](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-congr-nhds.md) | 446 | `result-track:25a281934fd47217a7ba96f284c15ec39c6b5c8e1c97ab32956aec0b5cf50c38` |
| 57 | `theorem` | [differentiableWithinAt_inter](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-inter.md) | 450 | `result-track:19e8713f82febb02a11743a28e4b30f95aacbefcdc0a58df3822f64b9e432314` |
| 58 | `theorem` | [differentiableWithinAt_inter'](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-inter-source-edition-2.md) | 454 | `result-track:801909e0c84edc29ef07bbca17210b1b2ff7c3fd5653f02df72e9cb59e114a6e` |
| 59 | `theorem` | [differentiableWithinAt_insert_self](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-insert-self.md) | 458 | `result-track:a59e4ab1dd44e46c2716b76fbca54bd3c728bfd194cc6ab4886ff935e10dd761` |
| 60 | `theorem` | [DifferentiableWithinAt.of_insert](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-of-insert.md) | 464 | `result-track:5ec721a3d9089bfc31b298bb6a8e4146c2f3eb6978b07c7a10f58ca57255d013` |
| 61 | `theorem` | [differentiableWithinAt_insert](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-insert.md) | 468 | `result-track:1e6394a92095da11002310b9f40f20fc882a2ace46a53b3a5ef43d04e12ee8c5` |
| 62 | `theorem` | [DifferentiableAt.differentiableWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-differentiablewithinat.md) | 474 | `result-track:bf3eeb3242c5760518a25090151895d4bd2607a4b02e81e0a3bd6a43e24de7ed` |
| 63 | `theorem` | [Differentiable.differentiableAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiable-differentiableat.md) | 479 | `result-track:a5b7fd1c45423247cf7025a2c947e7c6823613f8e2ecf8406cd27034f8021707` |
| 64 | `theorem` | [DifferentiableAt.fderivWithin](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-fderivwithin.md) | 482 | `result-track:0a1f1b348ba396f3440a5eeb6aeca14bf96a81f95754d897c714a3f6f94d779a` |
| 65 | `theorem` | [DifferentiableOn.mono](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-mono.md) | 488 | `result-track:10249ec262a809c6551bc255b0992af13e91a80808dd9b28161321d012d59f34` |
| 66 | `theorem` | [differentiableOn_univ](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-univ.md) | 491 | `result-track:59f4eb830406cdbddee432bd90e76b26c2c0a08536df7dfe5a7769fee695367c` |
| 67 | `theorem` | [Differentiable.differentiableOn](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiable-differentiableon.md) | 496 | `result-track:b3e6517d554a0f6496bec2a68dab8791fd2a6488511d1a7c3526c738be7201e2` |
| 68 | `theorem` | [differentiableOn_of_locally_differentiableOn](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-of-locally-differentiableon.md) | 499 | `result-track:bcbd134195696fb836ed231df8bce9b855eb2c74201cb5e7fab1e43aa2c1bdca` |
| 69 | `theorem` | [fderivWithin_of_mem_nhdsWithin](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-of-mem-nhdswithin.md) | 506 | `result-track:3f77da2c514e19b1af154b15100f2196960a3dc6fc0f9732ccfd824519965525` |
| 70 | `theorem` | [fderivWithin_subset](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-subset.md) | 512 | `result-track:a236d733602f73ca98e75904802cadec6fe8b05c7e280744f5d97fccc1d9bed7` |
| 71 | `theorem` | [fderivWithin_inter](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-inter.md) | 518 | `result-track:0b18468596d46e3ec47a04cf860519b29e93dcc3f21158d336b57ab4811adfd1` |
| 72 | `theorem` | [fderivWithin_of_mem_nhds](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-of-mem-nhds.md) | 522 | `result-track:2a95542ffc899c9adedf49f101e38147c6724d7e756f003bc17b5fcf73f3f39f` |
| 73 | `theorem` | [fderivWithin_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-of-isopen.md) | 525 | `result-track:018e549aae1ac90881bd0c3dbfe963c66bf8ea161d8c9e6bfc6a6ff12b90687e` |
| 74 | `theorem` | [fderivWithin_eq_fderiv](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-eq-fderiv.md) | 528 | `result-track:2521241ec256637243b7da9d63fdfc44989560a8a3bdbff5974250fe69268fad` |
| 75 | `theorem` | [fderiv_mem_iff](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderiv-mem-iff.md) | 535 | `result-track:17fc75138a795360c56a6068dbbf3c82e58892dc770f97419766330f9149f2a6` |
| 76 | `theorem` | [fderivWithin_mem_iff](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-mem-iff.md) | 539 | `result-track:d85ab84ac2641c40f621cd640b53546ca61b2a92754f882a26fa373dddd53cf3` |
| 77 | `lemma` | [DifferentiableOn.union_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-union-of-isopen.md) | 552 | `result-track:13f6cfa15dfcfd9088f1d0865c45cf60eb07c81a09ffc05e792011776f4568bf` |
| 78 | `lemma` | [differentiableOn_union_iff_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-union-iff-of-isopen.md) | 562 | `result-track:96fa0e65ac706f40426eb122a908b0010cd66a2a6897565ffa4362a3ed2a410c` |
| 79 | `lemma` | [differentiable_of_differentiableOn_union_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiable-of-differentiableon-union-of-isopen.md) | 567 | `result-track:c50d654e3e3bda8833d202935ac7e3cdd3ff9cb329566a6435b321913f6b870c` |
| 80 | `lemma` | [DifferentiableOn.iUnion_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-iunion-of-isopen.md) | 574 | `result-track:0bbe8a79c202d5568653c611539ad651cb03f37fbd20e8f4e19eec3a1d8f0c75` |
| 81 | `lemma` | [differentiableOn_iUnion_iff_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-iunion-iff-of-isopen.md) | 582 | `result-track:2cece59e493056365e2fab03174865df1ef4f41eb757f2d85a72e4dc29d73303` |
| 82 | `lemma` | [differentiable_of_differentiableOn_iUnion_of_isOpen](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiable-of-differentiableon-iunion-of-isopen.md) | 588 | `result-track:0c6cafaaf171c6663f892642608723843f25c5e5eb6e65eaee1f75a15a0d95a6` |
| 83 | `theorem` | [HasFDerivAtFilter.isBigOTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-isbigotvs-sub.md) | 605 | `result-track:31590e6475b98e480a61e08cf69f4e0b675c56bda8426821efa248977090e3e3` |
| 84 | `theorem` | [HasStrictFDerivAt.isBigOTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-isbigotvs-sub.md) | 609 | `result-track:a7c7f37f55718cecc4d982af13bdaf4e27ada5e034ff4f566dc469711d9ff1f0` |
| 85 | `theorem` | [HasFDerivWithinAt.isBigOTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-isbigotvs-sub.md) | 613 | `result-track:17d73ecdf8fe1c1705f0dc3213a587ff29a97d3c67f6ff9939212edf14f625d5` |
| 86 | `lemma` | [DifferentiableWithinAt.isBigOTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-isbigotvs-sub.md) | 617 | `result-track:e1e3506ca14b8390e503586c8e6235f5fe45a285be5d40858ef15e4dbcab2ea2` |
| 87 | `theorem` | [HasFDerivAt.isBigOTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-isbigotvs-sub.md) | 621 | `result-track:993ff214ceea8265dbdbfcd1921c1a9122156e3617436fc45f328323562771d6` |
| 88 | `theorem` | [DifferentiableAt.isBigOTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-isbigotvs-sub.md) | 624 | `result-track:cc09f04f4a4eb48974fac5db2416d23ee227b9aa74be7aa13ac03d05e08f2f69` |
| 89 | `theorem` | [HasFDerivAtFilter.tendsto_nhds](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-tendsto-nhds.md) | 635 | `result-track:6913cc005f897cae478d41450d0677187cd15148d403245c3a6bde1e611d4e35` |
| 90 | `theorem` | [HasFDerivWithinAt.continuousWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-continuouswithinat.md) | 645 | `result-track:12c3d33e9391123cea18ad985c59497e023d2aa62046efc6addacb47c8a85ff0` |
| 91 | `theorem` | [HasFDerivAt.continuousAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-continuousat.md) | 649 | `result-track:8b8c045e0022685a54a388ed5f17ebf6ea28e6ae29edf6fd90357e93753525ce` |
| 92 | `theorem` | [DifferentiableWithinAt.continuousWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-continuouswithinat.md) | 653 | `result-track:e8e1545b350d8d4ec138671c5ffc813be4a26584c8fca90e43d527508ae728bb` |
| 93 | `theorem` | [DifferentiableAt.continuousAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-continuousat.md) | 659 | `result-track:f012ff4f6236ad97a78e9a9406ff989b82e73ae0bf6f24839290a71a308c72f4` |
| 94 | `theorem` | [DifferentiableOn.continuousOn](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-continuouson.md) | 664 | `result-track:f7a60c389801d0bf3efd9425b898719b9731f65d47f04eae0737d19712a4f105` |
| 95 | `theorem` | [Differentiable.continuous](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiable-continuous.md) | 668 | `result-track:53964b093fc636cfc9b833fbbd48ecff5384994e808919670019460c9c6368f1` |
| 96 | `theorem` | [HasStrictFDerivAt.continuousAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-continuousat.md) | 671 | `result-track:0efc5e42666bfb6fd9a47f91b7b657426b27df51d91eed8af5699e60ccf14b25` |
| 97 | `theorem` | [hasFDerivAtFilter_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-id.md) | 681 | `result-track:615566e7362e4fb2690508531582371d366e78cd2b1ef0a24c2e4831881ed443` |
| 98 | `theorem` | [hasStrictFDerivAt_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-id.md) | 685 | `result-track:a07ea70f688798c734b063d666f9285fad1158e8f94be1edf39c57944acbe5e4` |
| 99 | `theorem` | [hasFDerivWithinAt_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-id.md) | 689 | `result-track:aa11948419fff6595ef8bef5eb8c8f1c583443ea2fea5f6a6983a3f5d5c59140` |
| 100 | `theorem` | [hasFDerivAt_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-id.md) | 693 | `result-track:b9dd28b3e03f96d6a9442df9c26236562dc9a172af60197a17b382f0b57f0d28` |
| 101 | `theorem` | [differentiableAt_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-id.md) | 697 | `result-track:84314756008ffb39ba0bcb36053394b249fcaaf2bc71746f16c722c9a5b261fd` |
| 102 | `theorem` | [differentiableWithinAt_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-id.md) | 701 | `result-track:5f71a4a08d5187993112dd4754dde9056ac63b5700ba9bfd5028325b4ee27d19` |
| 103 | `theorem` | [differentiable_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiable-id.md) | 708 | `result-track:9d08d3f1793bbcdb6e2db4329394990218ceff250d2abace00eaca95145e5492` |
| 104 | `theorem` | [differentiableOn_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableon-id.md) | 711 | `result-track:01d8aa17b45ae7200da01287012ea2635348581846efea19fa46bafd1bc25b3e` |
| 105 | `theorem` | [fderiv_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderiv-id.md) | 715 | `result-track:3a3191a671a469b0fc5bc6e9939b26c2342e16dfdaaa359601698ca12cae8b98` |
| 106 | `theorem` | [fderivWithin_id](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/fderivwithin-id.md) | 721 | `result-track:82bd1aae64e4041d3090ef650de3e64a347f46943e8648f7bba6137c19bd9330` |
| 107 | `theorem` | [HasFDerivAtFilter.isEquivalent_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-isequivalent-sub.md) | 743 | `result-track:0ad3fd2bf171e432c1d931c0d078f5728fd4316a5f7dc5d41e5b54e6976d9b6f` |
| 108 | `theorem` | [HasFDerivAtFilter.isThetaTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-isthetatvs-sub.md) | 749 | `result-track:9171528724c8085e560f3bbe02bc8a03b04aeb2e8820315fb4792783ebe62471` |
| 109 | `theorem` | [HasFDerivAt.isEquivalent_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-isequivalent-sub.md) | 754 | `result-track:77a8b6f3f945c2b985c6af1a251b9476e566355c2abe4b30965051e1e956bc23` |
| 110 | `theorem` | [HasFDerivAt.isThetaTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-isthetatvs-sub.md) | 758 | `result-track:9130f82e68e6c1222cd6c2e083cf97ad62c6bd50757182c04ccef4fcaf8e69eb` |
| 111 | `theorem` | [HasFDerivWithinAt.isEquivalent_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-isequivalent-sub.md) | 762 | `result-track:6f36b995f0b3d9873d798d2e8f36b21947e0ad458c96426332583befe6c796d1` |
| 112 | `theorem` | [HasFDerivWithinAt.isThetaTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-isthetatvs-sub.md) | 767 | `result-track:26dc1bd9d378b47fd1d8966aed79356d5b1210ce2398b72a87d6320ed233fefc` |
| 113 | `theorem` | [HasStrictFDerivAt.isEquivalent_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-isequivalent-sub.md) | 772 | `result-track:654b6db6528d1be61bcedfc03e45d7a832102313f2ff6591c9c45ba9407fc8bf` |
| 114 | `theorem` | [HasStrictFDerivAt.isThetaTVS_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-isthetatvs-sub.md) | 777 | `result-track:e4773bb9ae4f20498ec791d2ba1696331b4a540bd3871dc5271847d56a8ff51d` |
| 115 | `theorem` | [hasFDerivAtFilter_iff_tendsto](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-iff-tendsto.md) | 797 | `result-track:547180ffce9584172878d363f4d063b1b784cdea8d2bd55a98a1e13d69024b39` |
| 116 | `theorem` | [hasFDerivWithinAt_iff_tendsto](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-iff-tendsto.md) | 805 | `result-track:cf09385460a1f32e03fcfbe9b4fbc52df572ad028fa8387b126711d0ae8369f9` |
| 117 | `theorem` | [hasFDerivAt_iff_tendsto](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-iff-tendsto.md) | 810 | `result-track:3d0771bf9af179a97ff75d30a8e4ec4408c78480b1d8438a3e586b710120a93f` |
| 118 | `theorem` | [hasFDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-iff-islittleo-nhds-zero.md) | 815 | `result-track:180a70c555b46928ab190f0f0460cab88ab6a7ccaddeb43e4858e6d2cc34c0ef` |
| 119 | `theorem` | [HasStrictFDerivAt.isBigO_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-isbigo-sub.md) | 820 | `result-track:2f7f973d76a5ec4d7756fc0bb224ee5760623745bdfd466841176eb227562696` |
| 120 | `theorem` | [HasFDerivAtFilter.isBigO_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-isbigo-sub.md) | 824 | `result-track:a9f214074637fd0de7a928a2310d46f7f0326b75a20050c84ec65f11d2564743` |
| 121 | `theorem` | [HasFDerivWithinAt.isBigO_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-isbigo-sub.md) | 828 | `result-track:b24d607aad36deb514d23c2a52628f0afac85d013219704077d775ffc0c33e1b` |
| 122 | `lemma` | [DifferentiableWithinAt.isBigO_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiablewithinat-isbigo-sub.md) | 832 | `result-track:a4a83d0631deb5b9afe10a7cf52905c0cd256f28e2322aa1a08c86bbec4c4690` |
| 123 | `theorem` | [HasFDerivAt.isBigO_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-isbigo-sub.md) | 836 | `result-track:5fca91ba1542fc063771ba9a5fc96470c19922d0c4f00524ded04e7bdadd292e` |
| 124 | `theorem` | [DifferentiableAt.isBigO_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-isbigo-sub.md) | 839 | `result-track:13dcf75cc8426ef39df9619ae3d3e5f1421f041c84b895e3d167a6045db093f0` |
| 125 | `theorem` | [Asymptotics.IsBigO.hasFDerivWithinAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/asymptotics-isbigo-hasfderivwithinat.md) | 843 | `result-track:76cef2f4507b4175f14c8027a4310cc691cfc6e7e81ac00544ac0b8770f17bd3` |
| 126 | `theorem` | [Asymptotics.IsBigO.hasFDerivAt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/asymptotics-isbigo-hasfderivat.md) | 850 | `result-track:d84d9a393cd08d05d7e87517bb4627759992a810c8e53cdf8f9554eb6220795f` |
| 127 | `theorem` | [HasStrictFDerivAt.isTheta_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-istheta-sub.md) | 855 | `result-track:f93493153371963d0e8c8ece6b03a44b4a5ef4eef6077eb1d37462745a7bad5d` |
| 128 | `theorem` | [HasFDerivAtFilter.isTheta_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivatfilter-istheta-sub.md) | 860 | `result-track:bfddd5b0fcfb025d6015388e8ae1b18eb60b05e6d389846fa390eb3a08d13b5c` |
| 129 | `theorem` | [HasFDerivWithinAt.isTheta_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivwithinat-istheta-sub.md) | 865 | `result-track:0e6598a2cef11eb4145dfbedda8393e58b9959ce668a7c013a1a2e8b19910f25` |
| 130 | `theorem` | [HasFDerivAt.isTheta_sub](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-istheta-sub.md) | 870 | `result-track:9c95d60e9e0b94a60a6e84e7856fd7e8a2175b0b8f3417592ba86dbbd9fc8682` |
| 131 | `theorem` | [HasStrictFDerivAt.exists_lipschitzOnWith_of_nnnorm_lt](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-exists-lipschitzonwith-of-nnnorm-lt.md) | 879 | `result-track:4cb1e4371dfd01f71d851bd30a72fd1f9b649c167671d5dc967b0a3481b3a988` |
| 132 | `theorem` | [HasStrictFDerivAt.exists_lipschitzOnWith](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasstrictfderivat-exists-lipschitzonwith.md) | 890 | `result-track:6bda999c7dc4fde00ae4f0ca5c9bd3ddd8113587f96bd55419fd8c3afc6eeb1c` |
| 133 | `theorem` | [HasFDerivAt.le_of_lip'](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-le-of-lip.md) | 897 | `result-track:060bef0b35a24299781dd521186eae6c4712984c73b5d4cdb908e430d4c6c3e7` |
| 134 | `theorem` | [HasFDerivAt.le_of_lipschitzOn](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-le-of-lipschitzon.md) | 911 | `result-track:bb83c7d06281f53b02e0b64c9bda2b623978496b9c2793ae0cb79a090d53ce4a` |
| 135 | `theorem` | [HasFDerivAt.le_of_lipschitz](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-le-of-lipschitz.md) | 919 | `result-track:c7d1beb998b825a231aee8d58b75c4685ee8e1094a6b34c7af7db1bc70f2e881` |
| 136 | `theorem` | [norm_fderiv_le_of_lip'](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/norm-fderiv-le-of-lip.md) | 928 | `result-track:927f5f87737d4b7d63643cedd312deca53b572df375fd88f40678a2c0c3a63a4` |
| 137 | `theorem` | [norm_fderiv_le_of_lipschitzOn](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/norm-fderiv-le-of-lipschitzon.md) | 939 | `result-track:88f844516e81053a77f180d2dcd95fc7fc510ac3f90011067ced12671647dee4` |
| 138 | `theorem` | [norm_fderiv_le_of_lipschitz](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/norm-fderiv-le-of-lipschitz.md) | 947 | `result-track:b78e7f261ea0923c8c69c3e107500bb2cff5f88a7000132479b11c0bb365b7d1` |
| 139 | `lemma` | [HasFDerivAt.comp_semilinear](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/hasfderivat-comp-semilinear.md) | 966 | `result-track:e21203fa45f1715464dbfbe062710b5b1a02cefa0a3fc34addd5e99e3e3f8348` |
| 140 | `lemma` | [DifferentiableAt.comp_semilinear₂](../../../../RealFunctions/FDerivBasicPublic.lean/declarations/differentiableat-comp-semilinear.md) | 975 | `result-track:2239592eded242d4ecefe6bc005d9f98a7d306a20792deb065a0041cad7b197b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ecab750fb3bece3bc50f3f49491117c8258c2482389673d159f9226bc478fbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant1038ebcf5e5440f9f47890fc5fc8cff8de7933bacd9a492180f33b2d42a03f22.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
