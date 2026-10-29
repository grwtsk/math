# Verification target: Final Xi Deriv Zeros

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e977c23ce5839e0cbd49741cf48f80606e3e8071",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e977c23ce5839e0cbd49741cf48f80606e3e8071`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Assembly` — import line 49; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Inputs` — import line 50; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Certificate` — import line 51; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Window` — import line 52; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.QuarticWindow.ZeroSide` — import line 53; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Seam` — import line 54; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ZeroCount` — import line 55; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.ZeroFree` — import line 56; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.ExplicitFormula.Main` — import line 57; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff` — import line 58; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Coeff.Reexpansion` — import line 59; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.FamilyFlat` — import line 60; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.FamilyHyps` — import line 61; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.FamilyHypsV` — import line 62; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.ZeroFree` — import line 63; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.Seam` — import line 64; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.Count` — import line 65; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.EFFinal` — import line 66; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.Hardy.ZFunction` — import line 67; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Gevrey` — import line 68; external provider; requires a separately pinned dependency.
- `Zeta23.Defs.Profile` — import line 69; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.Statement` — import line 70; external provider; requires a separately pinned dependency.
- `Zeta23.Statement.SeamClosed` — import line 71; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [xiDerivZeros₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xiderivzeros.md) | 83 | `declaration-track:a071b7b7fe8cc61bee2e3a0a302ceb2d0ffc1ffcfa3bbbf559cda8a46b4f0047` |
| 2 | `lemma` | [xiDerivZeros₀_carrier](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xiderivzeros-carrier.md) | 86 | `result-track:c3fd4a1bf43a50d405919e0297d3db46df4e88b054a666e4cc921d0378ccadd1` |
| 3 | `lemma` | [xiDerivZeros₀_mult](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xiderivzeros-mult.md) | 87 | `result-track:d54f681cf61dc1e316bae902190db5eb6d1859d0219e17983d3a37208d8ca7a2` |
| 4 | `theorem` | [xiDerivZeros₀_rvm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xiderivzeros-rvm.md) | 90 | `result-track:9f97a9891432ef4c880cabab6db42f730410155c483469108bb26ba9f621c05d` |
| 5 | `theorem` | [xiEF_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xief-flat.md) | 96 | `result-track:be7e0b3f9238e0d73d90330d265296655e2628c7b2b8c238cb2aa43189110bfc` |
| 6 | `theorem` | [xiDeriv_simple_on_line_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-flat.md) | 112 | `result-track:7143f2a95e97bfb79ae61fb0ce0843a2ac9f11420d64877370c9d2edc3b3bdc0` |
| 7 | `theorem` | [headlineFlat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlineflat.md) | 128 | `result-track:58e7852d1e1ed394eda52060ff8bbb17f570fc54e39e40fd09f12b0d375bcb99` |
| 8 | `theorem` | [xiDeriv_simple_on_line_flat_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-flat-cumulative.md) | 136 | `result-track:e30f29e4a30cd5f084685f6a178a365f24c73876e10d1ab16edd99f88c6b7aac` |
| 9 | `theorem` | [headlineCumulative_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinecumulative-flat.md) | 152 | `result-track:ddba9d6e3ee9e7d8a600272530ce4259be367f5fa9c19160c03c6d1b3760ba07` |
| 10 | `theorem` | [xiDeriv_simple_on_line_flat_std](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-flat-std.md) | 163 | `result-track:74297fe8790b833a433e87fd15c514e54331a6d99baf7c1ad7a76c6aa31eec7a` |
| 11 | `theorem` | [xiDeriv_simple_on_line_flat_cumulative_std](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-flat-cumulative-std.md) | 170 | `result-track:1fc8b1c4743e71ffcd32eea4243ca92c22d0c1a65c0cd000388f94d4bf75810d` |
| 12 | `theorem` | [xiEF_flat_rhoTwo](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xief-flat-rhotwo.md) | 189 | `result-track:af9158e3c5b1261debf89e78a52ed5b4a2f7b1ddc8b8dab9af63798fe4c02ac8` |
| 13 | `theorem` | [xiDeriv_simple_on_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line.md) | 199 | `result-track:a4d89534d2cd041d6b12d79fe4bbe6ca445610ba97aaf1333fa38a46d03bfdbe` |
| 14 | `theorem` | [xiDeriv_simple_on_line_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-cumulative.md) | 207 | `result-track:afd622e51d02d526a261aa7b359c6e9c2c528901b61e518b9bfc2c1e78885a6e` |
| 15 | `theorem` | [xiDeriv_fixedLamBounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-fixedlambounds.md) | 216 | `result-track:7719989ae1acc1d34c59cd17d0b4fe71767ba458aa68815d296ca759a4a34cb9` |
| 16 | `theorem` | [xiDeriv_simple_on_line_limitForm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-limitform.md) | 227 | `result-track:29ed27c9df7248e558372a6f138ad98836d1ed04392563e971dccfa980d8bbbc` |
| 17 | `theorem` | [zerosIn_finite](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/zerosin-finite.md) | 253 | `result-track:84e36fab5ea88adf49ae0938d2aaecac1623fdd8c98a66514459319e6da87696` |
| 18 | `theorem` | [tendsto_Ncount_atTop](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/tendsto-ncount-attop.md) | 257 | `result-track:b6e62329be859e8f6f61f0caebd651118584881693981e2ea1653cc78686264c` |
| 19 | `theorem` | [headlineFlat_unconditional](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlineflat-unconditional.md) | 261 | `result-track:2cf826e86be33532cea726dac12a5a28b3a8a80e2fc3085ee92d680ee3bda5fe` |
| 20 | `theorem` | [headlineCumulative_unconditional](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinecumulative-unconditional.md) | 263 | `result-track:da300d0918937e2013aa457c22b38ac612f2b7a01a22c97a07d76c193d800315` |
| 21 | `theorem` | [eventually_zetaCount_le_Ncount](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/eventually-zetacount-le-ncount.md) | 279 | `result-track:19d6ea87df739764d07cdc895ede1fa23e20e5ce654374c10a16ba397c2a6764` |
| 22 | `theorem` | [xiDeriv_simple_vs_zetaCount](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-vs-zetacount.md) | 304 | `result-track:f0fa1250f9dbf611f61d5cacc5cd67de4b07b67118accb22f4a122f5ba4486e4` |
| 23 | `theorem` | [xiEF_atV](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xief-atv.md) | 361 | `result-track:d4e6f07288797cb563237e0fb29b915bd33cf7b098bcc05789be03a4f3f1c7d2` |
| 24 | `theorem` | [xiDeriv_simple_on_line_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-quartic.md) | 376 | `result-track:7988b479a323a43f7073d6234a551d81f4673a3b1f4e726948f6f513c61c04dc` |
| 25 | `theorem` | [headlineQuartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinequartic.md) | 393 | `result-track:e64ed1d5e74705bd91f3e31f450ae43344c2cbd29ece7501522ec1e6e3700017` |
| 26 | `theorem` | [xiDeriv_simple_on_line_quartic_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-quartic-cumulative.md) | 399 | `result-track:a62b2c4d9720751b98b0e8d2d469a01e28b8df0bdb3304fa1fef78084b04077d` |
| 27 | `theorem` | [headlineCumulative_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinecumulative-quartic.md) | 417 | `result-track:4ef369a543f5b4ebce681a83fedea36332a012370d76f39b059c7ae4e1cf6785` |
| 28 | `theorem` | [xiDeriv_simple_on_line_quartic_std](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-quartic-std.md) | 425 | `result-track:b081935a19992216c0efe9a6d6f323c7567b8aab478b6dab716711265b651e2a` |
| 29 | `theorem` | [xiDeriv_simple_on_line_quartic_cumulative_std](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/xideriv-simple-on-line-quartic-cumulative-std.md) | 431 | `result-track:f2c675b378c3a1740c2db86cae415b04253fcf16a18deb34be24bb41527d7eac` |
| 30 | `theorem` | [headlineQuartic_unconditional](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinequartic-unconditional.md) | 437 | `result-track:5fe0d3f1e01dfdc45cfff2ba89fcf1cca8ddf7f0bff6850f7f4306d407cf6a21` |
| 31 | `theorem` | [headlineCumulative_quartic_unconditional](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinecumulative-quartic-unconditional.md) | 439 | `result-track:4aabcc3e9cd87f30f83bdace9b7f198f70666995710fecdd207030043783433b` |
| 32 | `def` | [wStripHeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wstripheight.md) | 457 | `declaration-track:bb11540a7279d7a9c3822bc405f10c274a20c6a8212455fb47d9ab4f2f2619b5` |
| 33 | `theorem` | [wStripHeight_pos](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wstripheight-pos.md) | 459 | `result-track:97414abedbb98100c8cc9aaf257d25aa441538628045bd8ed611a044195ecccd` |
| 34 | `theorem` | [wZerosInStrip_wStripHeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wzerosinstrip-wstripheight.md) | 461 | `result-track:4f0c7de5f86a387be46d51be6f44c19f1f5c756c8a95b92e8043f1b2a97641a0` |
| 35 | `theorem` | [wSeam_wStripHeight](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wseam-wstripheight.md) | 464 | `result-track:9ab119f300d4642dbfa862ad1ab76fbf173781a336fbcad70497046314bbd303` |
| 36 | `def` | [wZeros₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wzeros.md) | 467 | `declaration-track:2f5d375784fb2a27873ada94b44be4366482d8fa6f3f1c33bbc5155a02728920` |
| 37 | `theorem` | [wZeros₀_rvm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wzeros-rvm.md) | 470 | `result-track:2e1c9426442283e048fc791a1ff289172ee31573bcbf678fb2a8aa32f06d86a7` |
| 38 | `theorem` | [wEF_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wef-flat.md) | 475 | `result-track:c5db7c437bab910ab48232c9df42749887e75aa440d8e7cd47d84c00dcc22b3a` |
| 39 | `theorem` | [hardyW_simple_on_line_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/hardyw-simple-on-line-flat.md) | 489 | `result-track:c6e81e28712a672f07d277cef78f66a4ea5cbfad9f3949bf78875f5d74d98fef` |
| 40 | `theorem` | [headlineW_flat](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinew-flat.md) | 504 | `result-track:87b21a25b2d37d4c6a6bc0562a16b60a2e8ab60462d698749d94978647a3aacc` |
| 41 | `theorem` | [hardyW_simple_on_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/hardyw-simple-on-line.md) | 516 | `result-track:d87c92c4cb3d8ab6b5632cc2a0e86211890f0944fa928c13b36176b10ac309c6` |
| 42 | `theorem` | [headlineW_unconditional](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinew-unconditional.md) | 522 | `result-track:621b7a220c92fc050f913e3862b962a843d9d63c6d04d77ee01c7b03006e36e7` |
| 43 | `theorem` | [wEF_atV](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/wef-atv.md) | 527 | `result-track:201ae3b0de7a9991240473d54e93fd179b2c5e17d54b90bde0109fbbd6871742` |
| 44 | `theorem` | [hardyW_simple_on_line_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/hardyw-simple-on-line-quartic.md) | 533 | `result-track:cee2e3a598ccbff6b7c74d07fa0f843f9e8e472fffc1595f56ac531aca2fff2c` |
| 45 | `theorem` | [hardyW_simple_on_line_quartic_std](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/hardyw-simple-on-line-quartic-std.md) | 549 | `result-track:2177652f47800f10a5c037040ef6ee6e79b36dfd94acf11405c105f9f7aad02e` |
| 46 | `theorem` | [headlineW_quartic_unconditional](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/headlinew-quartic-unconditional.md) | 555 | `result-track:5a1249e0364054b33ad9d8661a9cba115d27a90fe34f3614d1d4370617ee1471` |
| 47 | `theorem` | [hardyZ_simple_stationary_points](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/hardyz-simple-stationary-points.md) | 572 | `result-track:7ed3b8c47333ec41a2a26ee805ce527445afb926ad2865407548b056041e57a2` |
| 48 | `theorem` | [hardyZ_simple_stationary_points_quartic](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/FinalXiDerivZeros.lean/declarations/hardyz-simple-stationary-points-quartic.md) | 584 | `result-track:04e1c77c317943385a130675d37e82d25312ca3f4241d2bdaea721c631fe9b2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56bc180edc12330274a0831a7bbb0a9c514c1641a39ec996cd4cfbb7545aa85c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Final/Variant57e722729934f01f4f108ddde3c330ddb487f0edc7c0b9bc2f38f10505586553.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
