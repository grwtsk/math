# Verification target: Line Deriv Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "92ee1378520150e7f2b632c41a9821af096f9945",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/LineDerivBasicNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/LineDerivBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `92ee1378520150e7f2b632c41a9821af096f9945`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Slope` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasLineDerivWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat.md) | 77 | `declaration-track:2f0da7274fd741669876a3bd1ec72ca2b4ad0de6ccc9f6a6c0256063eb66c4e6` |
| 2 | `def` | [HasLineDerivAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat.md) | 84 | `declaration-track:acf4e40007c0b7c37bbe813521a51c338067bcfd08c072500bf58797f7ed88b0` |
| 3 | `def` | [LineDifferentiableWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat.md) | 90 | `declaration-track:c91be76c1555ed3e2579be77caa1da7ef1fb680e62b42569e5c002a1627f657a` |
| 4 | `def` | [LineDifferentiableAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat.md) | 95 | `declaration-track:a567287a08f3e9796e01a743ba89351180ece55a6b8093ec470b75279fb88878` |
| 5 | `def` | [lineDerivWithin](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin.md) | 104 | `declaration-track:cd682687f6ce86b0c291f13c3c9664f0fb419eb24f43740c161854a73bfd857f` |
| 6 | `def` | [lineDeriv](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederiv.md) | 112 | `declaration-track:17afc62db75693473536f3660f1bb1b9d6650ad8a099a03c2194372a7a68668e` |
| 7 | `lemma` | [HasLineDerivWithinAt.mono](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-mono.md) | 118 | `result-track:5c9bd349d196132490a20ba2baa3baf3011f3adf7745b44bd2697fdd9dc58b2c` |
| 8 | `lemma` | [HasLineDerivAt.hasLineDerivWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-haslinederivwithinat.md) | 122 | `result-track:59ac35f5a7d3c118321f8cecbbd12f85a14e574d0494f9ef16752e0f11cd9fac` |
| 9 | `lemma` | [HasLineDerivWithinAt.lineDifferentiableWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-linedifferentiablewithinat.md) | 126 | `result-track:e500c621fb8aa9e47e6dab0d99c3fb11370b20b7f48f6ffee2961ca6111e2819` |
| 10 | `theorem` | [HasLineDerivAt.lineDifferentiableAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-linedifferentiableat.md) | 130 | `result-track:b0c3ffb8f88930f4f2e05296b93c912abebc92e32ed882ab7c4b658584f7e99e` |
| 11 | `theorem` | [LineDifferentiableWithinAt.hasLineDerivWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-haslinederivwithinat.md) | 134 | `result-track:7996da21db402702a2085a2814b76d07d834da854ab03956150930b87721622b` |
| 12 | `theorem` | [LineDifferentiableAt.hasLineDerivAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-haslinederivat.md) | 138 | `result-track:5ad8a862205868f77bb919429e179303319259e1a32e8cd5ba4cd454c98b05d9` |
| 13 | `lemma` | [hasLineDerivWithinAt_univ](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-univ.md) | 142 | `result-track:9b5727f0050762461399debb6c2f73c5594dfcb115b9c1801caca9128a07cc6c` |
| 14 | `theorem` | [lineDerivWithin_zero_of_not_lineDifferentiableWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-zero-of-not-linedifferentiablewithinat.md) | 146 | `result-track:accacbdb758688b30735771905b32d22609925f08e93cffb7ec99f7106d215bd` |
| 15 | `theorem` | [lineDeriv_zero_of_not_lineDifferentiableAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederiv-zero-of-not-linedifferentiableat.md) | 151 | `result-track:bc327221172ccfdd82126202d04b4a701a2c3f05f9b1af8f7011d2013ec65595` |
| 16 | `theorem` | [hasLineDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-iff-islittleo-nhds-zero.md) | 155 | `result-track:6cac2b0f7094d95fcb6848cb4026d83d09dc697bdbd86a620b81456ee5f98488` |
| 17 | `theorem` | [HasLineDerivAt.unique](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-unique.md) | 160 | `result-track:9e9dced6befd8979089e4f54e7d1938c14116177c5bca478e03e2709e08bdd8e` |
| 18 | `theorem` | [HasLineDerivAt.lineDeriv](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-linederiv.md) | 164 | `result-track:8325809623205d4e2bd620bdd8ce4b56fc9d0e065894cbf9cb4ae00e73c1a768` |
| 19 | `theorem` | [lineDifferentiableWithinAt_univ](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-univ.md) | 168 | `result-track:ad5da7954258b0f2907235678a350667b6ef9f5bfce91f7433cfb1353eeb076e` |
| 20 | `theorem` | [LineDifferentiableAt.lineDifferentiableWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-linedifferentiablewithinat.md) | 173 | `result-track:89f0e3a8c70ae34f677b5630b49e5521a8f346b5a2c241d9f469aa2db9b8967f` |
| 21 | `theorem` | [lineDerivWithin_univ](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-univ.md) | 178 | `result-track:f9e8d5688eddb5568b1806df7c796b1b9067091fcd5d3d857778934619fca3d0` |
| 22 | `theorem` | [LineDifferentiableWithinAt.mono](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-mono.md) | 181 | `result-track:a59e5194bfa3f0d7384c4fdfa20f58367ea37b7eb2bfdc5beddf9b62d44cdb02` |
| 23 | `theorem` | [HasLineDerivWithinAt.congr_mono](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-congr-mono.md) | 185 | `result-track:efd39ae24f91560e88803122da91aba5603e919e58a9d88a2cd4a221752e4115` |
| 24 | `theorem` | [HasLineDerivWithinAt.congr](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-congr.md) | 189 | `result-track:0a7dab4a34523856eb35df1cf99ede869a14fdfe097fff70c622bfc69a4dac17` |
| 25 | `theorem` | [HasLineDerivWithinAt.congr'](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-congr-source-edition-2.md) | 193 | `result-track:796f2e676fe82a0b410a5f63e7d351c1bbf4f555f5e147797d6269e771bf96d8` |
| 26 | `theorem` | [LineDifferentiableWithinAt.congr_mono](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-congr-mono.md) | 198 | `result-track:0c2e42bd6c08ff08174995f445fdaa4e3226e719aa2eb4ae5df43200f13a5d3c` |
| 27 | `theorem` | [LineDifferentiableWithinAt.congr](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-congr.md) | 203 | `result-track:0d6466a3014664597866804b24a56a18a036a4a635f6babb0ce3b0185f227434` |
| 28 | `theorem` | [lineDerivWithin_congr](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-congr-source-edition-2.md) | 208 | `result-track:6982854163d6167653749a3f72a20b7edf8adf0958a4005d929fa4e0680d7f23` |
| 29 | `theorem` | [lineDerivWithin_congr'](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-congr.md) | 212 | `result-track:2be0074881d4227f99548689c222367a0f43a7a44491eceec0f4cf00fada308c` |
| 30 | `theorem` | [hasLineDerivAt_iff_tendsto_slope_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-iff-tendsto-slope-zero.md) | 216 | `result-track:013f7bec22e6bc189d60acef26bd001ba4a9948c7e7bdb815b2e28cc323fecd4` |
| 31 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_right](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-tendsto-slope-zero-right.md) | 224 | `result-track:184ce9e9db2425bf806a5e38a8e84dc35cf9f8d7d334aa4674a1ae5b9ad60faf` |
| 32 | `theorem` | [HasLineDerivAt.tendsto_slope_zero_left](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-tendsto-slope-zero-left.md) | 228 | `result-track:d576290f85840c8a721ed86872951c3403adc17c9538e1756e0f0419fc7ba87d` |
| 33 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt'](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-haslinederivat.md) | 232 | `result-track:590a2b0e490b96e18e2b19d45da18f428dd271670229647c79543729ec8566fd` |
| 34 | `theorem` | [HasLineDerivWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-mono-of-mem-nhdswithin.md) | 248 | `result-track:2e3ec5db7588091a22520ea8bf5550edb09afb04ecdd51bd1cbcb5b357a02ae5` |
| 35 | `theorem` | [HasLineDerivWithinAt.hasLineDerivAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-haslinederivat-source-edition-2.md) | 258 | `result-track:e8bc3a4122cedd1481fed7c0c6960d7cbfc18953edd75a40bb7c2eb03b1e51a5` |
| 36 | `theorem` | [LineDifferentiableWithinAt.lineDifferentiableAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-linedifferentiableat.md) | 263 | `result-track:60c5cffe91c8efb5a494e8b191aab859e63b5cf4652dc76ddbf76daf94e3e063` |
| 37 | `lemma` | [HasFDerivWithinAt.hasLineDerivWithinAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/hasfderivwithinat-haslinederivwithinat.md) | 267 | `result-track:99d6cef503a6093f0f3a4baf3f9d59b7ccff5ba9049a4c01d7c021148d11fefd` |
| 38 | `lemma` | [HasFDerivAt.hasLineDerivAt](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/hasfderivat-haslinederivat.md) | 276 | `result-track:e85c21fc163e2a203f3354719b1035d26643f98b87ed13136dd99baafca3b836` |
| 39 | `lemma` | [DifferentiableAt.lineDeriv_eq_fderiv](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/differentiableat-linederiv-eq-fderiv.md) | 281 | `result-track:3c1cde420f3e30260194ccdda5726d956f9cb357db9d360539bb6d2ce2964295` |
| 40 | `theorem` | [LineDifferentiableWithinAt.mono_of_mem_nhdsWithin](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-mono-of-mem-nhdswithin.md) | 285 | `result-track:96c60dd933eb686e64522430db62cd90ec3e88665ddf709f6575f56c30c9a4d5` |
| 41 | `theorem` | [lineDerivWithin_of_mem_nhds](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-of-mem-nhds.md) | 292 | `result-track:9bd20015234bbe93318a12981d76b7a2196f03dbf93cd7aecd609e239d518d81` |
| 42 | `theorem` | [lineDerivWithin_of_isOpen](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-of-isopen.md) | 298 | `result-track:8d5ef152a774a626111e7ccc1a1e9124124c2edb93441fe8048cf3de6e9a24ba` |
| 43 | `theorem` | [hasLineDerivWithinAt_congr_set](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-congr-set.md) | 302 | `result-track:0dbe3d2ebc4d12d2ec393db4b793ae108df547d374bffaa427e231b63d0f8e30` |
| 44 | `theorem` | [lineDifferentiableWithinAt_congr_set](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-congr-set.md) | 310 | `result-track:643db886bda0cd42552665ad1b4e538cd7c17d08a09737d53b30f4df0b9520d0` |
| 45 | `theorem` | [lineDerivWithin_congr_set](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederivwithin-congr-set.md) | 317 | `result-track:b594c262d141863118bdc83deb3457e3713923889bb6077970a897ffd2874be5` |
| 46 | `theorem` | [Filter.EventuallyEq.hasLineDerivAt_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-haslinederivat-iff.md) | 325 | `result-track:faa1cbd7f208390712d5fc3be367b1caab2fa0a149ef98d0698ed0703f73b8ff` |
| 47 | `theorem` | [Filter.EventuallyEq.lineDifferentiableAt_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-linedifferentiableat-iff.md) | 333 | `result-track:1cbd13ad99f746070741be013532d7f3b75a7967f5873b7660ef98e11fcaa4d8` |
| 48 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-haslinederivwithinat-iff.md) | 338 | `result-track:6edecdd8d3b91e0f3cd31695859928bca5f702d1011af86f53f010d4359e4e1e` |
| 49 | `theorem` | [Filter.EventuallyEq.hasLineDerivWithinAt_iff_of_mem](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-haslinederivwithinat-iff-of-mem.md) | 345 | `result-track:7c49121a7b66bdae2e7d7f49ed70fa03256a8c0005c6cdcf0b63f74bca65b897` |
| 50 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-linedifferentiablewithinat-iff.md) | 349 | `result-track:db913307c28380c7d900d46edc3ece52a68031e7c3b96e668835e30f04aaf0f5` |
| 51 | `theorem` | [Filter.EventuallyEq.lineDifferentiableWithinAt_iff_of_mem](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-linedifferentiablewithinat-iff-of-mem.md) | 355 | `result-track:9d23da1713358903578c0df0e171455b2b0403fe063f50484f12d54ced4a8afd` |
| 52 | `lemma` | [HasLineDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-congr-of-eventuallyeq.md) | 360 | `result-track:23cfcfea45fedb07276fd6933ae9934a2284196136063225ef26fc37992f3ebf` |
| 53 | `theorem` | [HasLineDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-congr-of-eventuallyeq.md) | 366 | `result-track:4fcb729e7a50ae8b861038fd09d18c17aa216ab348f4223236025ff98ea9e739` |
| 54 | `theorem` | [LineDifferentiableWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-congr-of-eventuallyeq.md) | 373 | `result-track:79156ad31a5d18179a0da9a302d373a88675e65202ac2be679794e5341f5e5c8` |
| 55 | `theorem` | [LineDifferentiableAt.congr_of_eventuallyEq](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-congr-of-eventuallyeq.md) | 377 | `result-track:ce46a14598311db5a98be87ab4c7362d29c268dde303793895d0f4949b8bfae5` |
| 56 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-linederivwithin-eq.md) | 385 | `result-track:86d2a0d2d7e1ebc7993a677128439e0cbfa5cb0102714909ff0c96964cbd1125` |
| 57 | `theorem` | [Filter.EventuallyEq.lineDerivWithin_eq_nhds](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-linederivwithin-eq-nhds.md) | 391 | `result-track:33ae594bd1c173d1762b528eb27c0bc8b45e9a51863d0574e16bc7530724877f` |
| 58 | `theorem` | [Filter.EventuallyEq.lineDeriv_eq](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/filter-eventuallyeq-linederiv-eq.md) | 395 | `result-track:196a614073f88e05873fbb6f099d3b4a2c5d5b400770a8d70414f9178b1a56bb` |
| 59 | `theorem` | [HasLineDerivAt.le_of_lip'](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-le-of-lip.md) | 403 | `result-track:a5f1370777d97c985d0c776cdb8e8e2a208947af9f35d729d8e40871e6732cec` |
| 60 | `theorem` | [HasLineDerivAt.le_of_lipschitzOn](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-le-of-lipschitzon.md) | 417 | `result-track:01fc8beab33720c15fb809017af92ffc65fd0e1ec6f5c62aa979aa124e23cfa9` |
| 61 | `theorem` | [HasLineDerivAt.le_of_lipschitz](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-le-of-lipschitz.md) | 426 | `result-track:3bf329e6d9cb76f75fb3a7309c29c7b6df0799be033872f9a695279c21ebe41c` |
| 62 | `theorem` | [norm_lineDeriv_le_of_lip'](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/norm-linederiv-le-of-lip.md) | 438 | `result-track:360089c6b01c7b1de3571a960e0209d3545e2e758fdbfed8495a6280db78310f` |
| 63 | `theorem` | [norm_lineDeriv_le_of_lipschitzOn](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/norm-linederiv-le-of-lipschitzon.md) | 451 | `result-track:9fb5f31334055abd32cee7d18e6bd4667328b8c9b42691910be347ff04bfdf8e` |
| 64 | `theorem` | [norm_lineDeriv_le_of_lipschitz](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/norm-linederiv-le-of-lipschitz.md) | 459 | `result-track:43d967327bc9fdd6fc9df3f8b0b5c296e491c25317409790f24c1777334e3602` |
| 65 | `theorem` | [hasLineDerivWithinAt_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-zero.md) | 471 | `result-track:ab4f48fad3a7bea69210e926b0c7f948444c3a8557af44afa2a1861b53e19220` |
| 66 | `theorem` | [hasLineDerivAt_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-zero.md) | 474 | `result-track:d7fcb0d5089b5a4a8c24bc8d802741f6b837c04b5f243909db477d0cc9a60109` |
| 67 | `theorem` | [lineDifferentiableWithinAt_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-zero.md) | 477 | `result-track:9f170bb914b32475cc7965e01552e670a9099fadf16c9c118a5473a5c8b5e53f` |
| 68 | `theorem` | [lineDifferentiableAt_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-zero.md) | 480 | `result-track:0810906b5de1bee43f484027f976f97eeeeff1eb3e881a44e49ebbe8c713f86b` |
| 69 | `theorem` | [lineDeriv_zero](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederiv-zero.md) | 483 | `result-track:2e5f0e354dc02f8ef8f04f2492a9feb9f75fad0e2810658a68536254a8243f4a` |
| 70 | `theorem` | [HasLineDerivAt.of_comp](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-of-comp.md) | 494 | `result-track:2eafc546722a576d804627423ec8545a3d1c0d092c5afacbcbd0492bf52efae5` |
| 71 | `theorem` | [LineDifferentiableAt.of_comp](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-of-comp.md) | 498 | `result-track:db4b000cee8f2585662fe0bd30043a4173cbe1c4f0790de18f10538bbfc3372d` |
| 72 | `theorem` | [HasLineDerivWithinAt.smul](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-smul.md) | 508 | `result-track:c03960b057f917d69576d406eeef2c8e33c4d94969dc9189e752cb52cbf8e28f` |
| 73 | `theorem` | [hasLineDerivWithinAt_smul_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivwithinat-smul-iff.md) | 521 | `result-track:96f95435610d6e6bc90f5e3449a44ebfcc15dfafebdd98c1553954ced58b4891` |
| 74 | `theorem` | [HasLineDerivAt.smul](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-smul.md) | 525 | `result-track:04bc593637a49aa3fffd13e7de636cb008265de7a71e52e15f18c1b60d47f2d2` |
| 75 | `theorem` | [hasLineDerivAt_smul_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/haslinederivat-smul-iff.md) | 530 | `result-track:28a45a39029a9d58098314d3e111a3456b702c80d2d6f45845d3907b6f1a313c` |
| 76 | `theorem` | [LineDifferentiableWithinAt.smul](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-smul.md) | 534 | `result-track:40cfd855a21988e8653bcdf7f83970e81574c04606dc93202e3812d1c74a6d1d` |
| 77 | `theorem` | [lineDifferentiableWithinAt_smul_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiablewithinat-smul-iff.md) | 538 | `result-track:3ab2898f491d58bb9dac3e5c44c5a6a6768202f2140866b928466d330da32104` |
| 78 | `theorem` | [LineDifferentiableAt.smul](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-smul.md) | 542 | `result-track:58cea4c71e82a4960c8453087ec50a279b590306757f386baf6b40f19e6693ef` |
| 79 | `theorem` | [lineDifferentiableAt_smul_iff](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linedifferentiableat-smul-iff.md) | 546 | `result-track:960787ef8fa17ff64ffe2265690488a86feaefc494280e0b4ac304fac8f2a1de` |
| 80 | `theorem` | [lineDeriv_smul](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederiv-smul.md) | 550 | `result-track:23f525153e3c10d0b77998ffe08cfe28f828ce5be9d4941a281a26cdea14bde6` |
| 81 | `theorem` | [lineDeriv_neg](../../../../RealFunctions/LineDerivBasicNamespaced.lean/declarations/linederiv-neg.md) | 559 | `result-track:9d5679cd747da1db484a46e250cdc4d3cb7b20304f86ad057e7e139dffef2458` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6cf943b1d99a2b435c94fb77f8827f994f2d233a2f8e4ed6cb11fa145448d87d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant7a14d1f3d3b632be000db96ca7254ed2e1505faabd9c79f5637cbb0d2e531cf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
