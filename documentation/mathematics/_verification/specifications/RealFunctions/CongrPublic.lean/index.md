# Verification target: Congr Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da599f75bd35b874f08b3fb7b326c2679500eefb",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CongrPublic.lean/index.md) · [Full source](../../../../RealFunctions/CongrPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da599f75bd35b874f08b3fb7b326c2679500eefb`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean.json)

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
| 1 | `theorem` | [hasFDerivWithinAt_congr_set_nhdsNE](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-set-nhdsne.md) | 44 | `result-track:57bc5f3de46920d93292ef4ad487b631b9c6b51001d66b05cfebdf6e09d6a5be` |
| 2 | `theorem` | [hasFDerivWithinAt_congr_set](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-set-source-edition-2.md) | 55 | `result-track:e1ec8de20f683e3cccdb1d54663fa0ffc81bf0c3009bd63d7966c72493d17827` |
| 3 | `theorem` | [hasFDerivWithinAt_congr_set'](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-set.md) | 61 | `result-track:896bffa41db225f1c81da4ae958d4e10a0ca4309c8d9c99cf92722cf731d89dd` |
| 4 | `theorem` | [differentiableWithinAt_congr_set_nhdsNE](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-set-nhdsne.md) | 69 | `result-track:d00037bec9efce74026aa4c817cdd47e24033faa40d67d08fe50e8ddc5bcb59f` |
| 5 | `theorem` | [differentiableWithinAt_congr_set'](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-set.md) | 75 | `result-track:1cf9e375be11e53877e87b50f4f78b6a0cee56dddefa2df99b4529f9c55d8a61` |
| 6 | `theorem` | [differentiableWithinAt_congr_set](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-set-source-edition-2.md) | 79 | `result-track:ada1c13059541c23336b1cb9c9316fc3fda3dc62b516de1fdfff150fe0edc89a` |
| 7 | `theorem` | [fderivWithin_congr_set_nhdsNE](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-congr-set-nhdsne.md) | 83 | `result-track:f97bd999aede4234ebed85c6462265eeddb6d19623e2d9b714f8b624f3948fc8` |
| 8 | `theorem` | [fderivWithin_congr_set'](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-congr-set-source-edition-2.md) | 91 | `result-track:cfa8078bc6c1bb09348100602d81368be6b91fe664e73c52d54f4ad173ba45b9` |
| 9 | `theorem` | [fderivWithin_congr_set](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-congr-set.md) | 96 | `result-track:6baedc10b6135dab2a3719ecdb269310f89efbf42aaa56c2c186b0ae9d4bf6be` |
| 10 | `theorem` | [fderivWithin_eventually_congr_set'](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-eventually-congr-set-source-edition-2.md) | 99 | `result-track:cbf9202be8682d707fbf94c7f79638d0dcf7226e1a962a882cb4d4af744b25f7` |
| 11 | `theorem` | [fderivWithin_eventually_congr_set](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-eventually-congr-set.md) | 103 | `result-track:82aaf458220e673bcdef7b0c0b7ba44272ffe56c0a7d87e3dea07b794f572ef3` |
| 12 | `theorem` | [Filter.EventuallyEq.hasFDerivAtFilter_iff](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-hasfderivatfilter-iff.md) | 107 | `result-track:45eb0af0df730745f6d4e14d79c50a51d3e899e7d3f1f8b4a7ebe6f5f2355805` |
| 13 | `theorem` | [Filter.EventuallyEq.hasStrictFDerivAt_iff](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-hasstrictfderivat-iff.md) | 112 | `result-track:09f46ccf4bf39bac2a7a78facd085ec8cda141f789eff7ca9fc797ad95bf5d2c` |
| 14 | `theorem` | [HasStrictFDerivAt.congr_fderiv](../../../../RealFunctions/CongrPublic.lean/declarations/hasstrictfderivat-congr-fderiv.md) | 116 | `result-track:4c93a45721af72a3b6a1183a740d28f83e49f2e2c61c03b67e5aa0a750431923` |
| 15 | `theorem` | [HasFDerivAt.congr_fderiv](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivat-congr-fderiv.md) | 120 | `result-track:80518580078e1d30ff8ebcc0120c4d0dda84b107f0d2266d14aceb17f3c69562` |
| 16 | `theorem` | [HasFDerivWithinAt.congr_fderiv](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-fderiv.md) | 123 | `result-track:4e3f3825222394652004805915dbb5e0ccd3fae7bcc0ceb13651dbc353bc548d` |
| 17 | `theorem` | [HasStrictFDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/CongrPublic.lean/declarations/hasstrictfderivat-congr-of-eventuallyeq.md) | 127 | `result-track:e3100337009ab09cdb5b809969e9e7f8954b539466b32ec59d4617d631af0dda` |
| 18 | `theorem` | [HasFDerivAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivatfilter-congr-of-eventuallyeq.md) | 131 | `result-track:082459e6f551390c247f0e2817bb7e248b548d32d6893f98b10789e53da3e262` |
| 19 | `theorem` | [Filter.EventuallyEq.hasFDerivAt_iff](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-hasfderivat-iff.md) | 136 | `result-track:280633a318d1406dbd9e2b201181d5051217abe7ba908b78cfe5f6cc4b67312b` |
| 20 | `theorem` | [Filter.EventuallyEq.differentiableAt_iff](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-differentiableat-iff.md) | 140 | `result-track:b9842c6ab5022081bbc6a24efa315c3cd4e0b07b38d121574ba2e7403d3689c3` |
| 21 | `theorem` | [Filter.EventuallyEq.hasFDerivWithinAt_iff](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-hasfderivwithinat-iff.md) | 144 | `result-track:92ed96e12e14770bf5f1e41bb2a4a21e52929989ca28cd352453e3a50613278d` |
| 22 | `theorem` | [Filter.EventuallyEq.hasFDerivWithinAt_iff_of_mem](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-hasfderivwithinat-iff-of-mem.md) | 148 | `result-track:5e3972d236777853de89ef988235e852064e32ee687eca36445028889abdab03` |
| 23 | `theorem` | [Filter.EventuallyEq.differentiableWithinAt_iff](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-differentiablewithinat-iff.md) | 152 | `result-track:098be37b7616baeebbfd3d3face0ae012bacd825c4b593cd603150220141f7dd` |
| 24 | `theorem` | [Filter.EventuallyEq.differentiableWithinAt_iff_of_mem](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-differentiablewithinat-iff-of-mem.md) | 156 | `result-track:24ebcfe63306432b4a27527789258e3f61e0d46865c9ecec78acacd93842b1f7` |
| 25 | `theorem` | [HasFDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-of-eventuallyeq.md) | 160 | `result-track:193bdbd9e04e75a5000685165c702af989a37b904c63adc3dae715a28be706cb` |
| 26 | `theorem` | [HasFDerivWithinAt.congr](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-source-edition-2.md) | 164 | `result-track:e95ac56ec8035edd746c1477aac2d4737f1488e6e1667bb2dfe91821a714882f` |
| 27 | `theorem` | [HasFDerivWithinAt.congr'](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr.md) | 168 | `result-track:bde0b1f18467b6b5b72923e2b49bcf60eb46a917eb7f4aa1e08f4630bc4ab1dd` |
| 28 | `theorem` | [HasFDerivWithinAt.congr_mono](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivwithinat-congr-mono.md) | 172 | `result-track:d3897746873e3c91c8d1547bf0ca65f0fe2b8d0c22f00e31c77c9a99e8bf4e9c` |
| 29 | `theorem` | [HasFDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/CongrPublic.lean/declarations/hasfderivat-congr-of-eventuallyeq.md) | 176 | `result-track:92970432d6aa7a3f18a2db12b34b7df25f166a5e70f37483f09af3c03657a7ee` |
| 30 | `theorem` | [DifferentiableWithinAt.congr_mono](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-mono.md) | 180 | `result-track:376bfd3f1f791aee1d76eb29136f48ba8204aa37cf6fd1f337b194856b58b044` |
| 31 | `theorem` | [DifferentiableWithinAt.congr](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr.md) | 184 | `result-track:51e72e54ada9091454b4ed171fc80737d59908b729a9f71cbda14401e88befc6` |
| 32 | `theorem` | [DifferentiableWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-of-eventuallyeq.md) | 188 | `result-track:131e1ff152e1c3d6bd29cac96b9660e8ae875adc004bba1669f4397332a0ad3c` |
| 33 | `theorem` | [DifferentiableWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-of-eventuallyeq-of-mem.md) | 192 | `result-track:137c2770843fc4dd806fb69ad174c43b65c3ec379ddf329dd8e0179fc44b7f75` |
| 34 | `theorem` | [DifferentiableWithinAt.congr_of_eventuallyEq_insert](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-congr-of-eventuallyeq-insert.md) | 196 | `result-track:1c57c67022fea6ac1e9af08bcc14843b995394044e64c3cc9b37a9f0e16e5c1f` |
| 35 | `theorem` | [DifferentiableOn.congr_mono](../../../../RealFunctions/CongrPublic.lean/declarations/differentiableon-congr-mono.md) | 200 | `result-track:d0e04a2e276fe076aed4eada52fe980904e381d150b95a610764fc68f417ea3c` |
| 36 | `theorem` | [DifferentiableOn.congr](../../../../RealFunctions/CongrPublic.lean/declarations/differentiableon-congr.md) | 203 | `result-track:0805735608dd6641558c7937c8f529e5df6217fa76f85f002b23de4e4642b32d` |
| 37 | `theorem` | [differentiableOn_congr](../../../../RealFunctions/CongrPublic.lean/declarations/differentiableon-congr-source-edition-2.md) | 206 | `result-track:b234504366c1564b7e22889e4948047293872a7c610519160f86c63db627cf82` |
| 38 | `theorem` | [DifferentiableAt.congr_of_eventuallyEq](../../../../RealFunctions/CongrPublic.lean/declarations/differentiableat-congr-of-eventuallyeq.md) | 211 | `result-track:b2239ed35ba3883f0dc512cb4bc466e4ebbb9047468746d8b5768cefb1eb15f8` |
| 39 | `theorem` | [DifferentiableWithinAt.fderivWithin_congr_mono](../../../../RealFunctions/CongrPublic.lean/declarations/differentiablewithinat-fderivwithin-congr-mono.md) | 215 | `result-track:2d6d66ba89f692e298418e34f5caaee34492371cbb611f27bca32304d1f8f241` |
| 40 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderivwithin-eq.md) | 223 | `result-track:613674dc3541cff2c699b7fe5016108572e5ecce0b66055451b9aa02c0ecaa76` |
| 41 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq_of_mem](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderivwithin-eq-of-mem.md) | 228 | `result-track:1ab68ae88e64ea3d1d22c22460227abc278610ecd4c0f10955b4052689c83b22` |
| 42 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq_of_insert](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderivwithin-eq-of-insert.md) | 232 | `result-track:0a844138ba185f082329fb1cb2410fd58b2979cc7d8e04e0ed1f0481b57d006f` |
| 43 | `theorem` | [Filter.EventuallyEq.fderivWithin'](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderivwithin.md) | 237 | `result-track:2d89b28e0eff8a594e9595fd2cf29140bfbe4076fff12fd33d948067273824df` |
| 44 | `theorem` | [Filter.EventuallyEq.fderivWithin](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderivwithin-source-edition-2.md) | 244 | `result-track:3bffbca4cd8f1418d882094e495f1e935cb96f6c1b516a30b030a3afb4a369b1` |
| 45 | `theorem` | [Filter.EventuallyEq.fderivWithin_eq_of_nhds](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderivwithin-eq-of-nhds.md) | 248 | `result-track:10b2745a733bfb84ccaf832637bf0e4c3c483c7352d0547eae8008bc59dd544a` |
| 46 | `theorem` | [fderivWithin_congr](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-congr-source-edition-2.md) | 252 | `result-track:a69780ee7f1c546f19c29a7d5d6e4a10fd3add9db4ac841e67f630cb2f88cff3` |
| 47 | `theorem` | [fderivWithin_congr'](../../../../RealFunctions/CongrPublic.lean/declarations/fderivwithin-congr.md) | 256 | `result-track:94ddc34ac9f506c54bd62fc6d98779f463bed8b1bdd2c02decada028f276f608` |
| 48 | `theorem` | [Filter.EventuallyEq.fderiv_eq](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderiv-eq.md) | 260 | `result-track:88c01882c07f366c67361202751fc2b16ef8d5dfc6970027f364543fbe933524` |
| 49 | `theorem` | [Filter.EventuallyEq.fderiv](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-fderiv.md) | 263 | `result-track:421d1a81dc5808b103e8a43d44cd41ba222f862161754a7dd1dce2be56b94bc9` |
| 50 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_fderivWithin'](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-codiscretewithin-fderivwithin-source-edition-2.md) | 268 | `result-track:19b9a0490020c84e1215a949fa80aa03d31050a97ed53b3db8a6cad1e3504f6c` |
| 51 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_fderivWithin](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-codiscretewithin-fderivwithin.md) | 280 | `result-track:01d11d8cbf95ffa26a3094b306f196ba1b651538290d5b020939a9e5781bd21a` |
| 52 | `theorem` | [Filter.EventuallyEq.codiscreteWithin_fderiv](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-codiscretewithin-fderiv.md) | 287 | `result-track:6eb1640f46fbf06538a44b6450e943eb311b1c46fe925f48d1b757b4b30097a8` |
| 53 | `theorem` | [Filter.EventuallyEq.codiscrete_fderivWithin](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-codiscrete-fderivwithin.md) | 296 | `result-track:f810cdc7bf33bfe76d896ea4457e826e5d16834e16a623a47136bca9ae7f9558` |
| 54 | `theorem` | [Filter.EventuallyEq.codiscrete_fderiv](../../../../RealFunctions/CongrPublic.lean/declarations/filter-eventuallyeq-codiscrete-fderiv.md) | 302 | `result-track:50da597bf773fed48893a6ae0bed7ed31209380e1a78c3a015b4389471449f4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b41e48ebf11ddf2c4613c34176244a494f8b834711e60dfc34ffa31b5461d99a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Congr/Variant4313c8cb8eab170a664df2753f3f1a59ac7f3ecd3f405b9b34e64c966430fa73.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
