# Verification target: Fourier Namespaced Integral Of Real C

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58cab2cabe3d30794ee6e204b4ff6fa1c45a683d",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/index.md) · [Full source](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58cab2cabe3d30794ee6e204b4ff6fa1c45a683d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.Taper.Strip` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integral_ofReal_C](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-ofreal-c.md) | 47 | `result-track:27bd02875c8b2129c7b4a111c774489325258df396fc1be9b675cd2f5303c9e2` |
| 2 | `theorem` | [integral_conj_C](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-conj-c.md) | 49 | `result-track:e6f21e33e6330c36907aa0d6e2740188615c02d376797cf33a848a4a25fe0919` |
| 3 | `theorem` | [integral_re_C](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-re-c.md) | 51 | `result-track:4da7206773ff49fb88e28b1f2525e0e2a79526061e7d96d67d0d9a6b0390318d` |
| 4 | `theorem` | [conj_paperFT_ofReal](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/conj-paperft-ofreal.md) | 64 | `result-track:bf8a92105d5c450063083e7d5dc0ee7ded55d3ccf19820379eaf33446b4201c7` |
| 5 | `theorem` | [paperFT_neg_of_even](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/paperft-neg-of-even.md) | 74 | `result-track:b53ffa355771f5bd8ef5dbb64bf9b4573863a0f33c156961cb63b59323d501c3` |
| 6 | `theorem` | [paperFT_ofReal_eq_re](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/paperft-ofreal-eq-re.md) | 85 | `result-track:8329a6043994bcc0ae2049fb6304fc1847135ee440a41d9a6dadbba6c71d6130` |
| 7 | `theorem` | [contDiff_paperFT_ofReal](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/contdiff-paperft-ofreal.md) | 92 | `result-track:04a45c3d873f1af10a04db9d3ea57d3a1f1681dc477cba9a6ca7322f8194386e` |
| 8 | `theorem` | [contDiff_re_paperFT_ofReal](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/contdiff-re-paperft-ofreal.md) | 104 | `result-track:4322fd54d4ea4bd6ba113bcd1a61ba17d68312d4298e017fa3def1729a7a8a26` |
| 9 | `theorem` | [integrable_of_abs_mul_one_add_sq_le](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integrable-of-abs-mul-one-add-sq-le.md) | 109 | `result-track:f9e41e263f34c7e496645e86af78b3643a32f6109388d450081579ad9b2f4a01` |
| 10 | `theorem` | [integrable_re_paperFT_sq_and](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integrable-re-paperft-sq-and.md) | 119 | `result-track:318595301a1295f6b12a41e7dad821334661ee21fed760a6c251b04ec7879064` |
| 11 | `theorem` | [autocorr_neg](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/autocorr-neg.md) | 172 | `result-track:05c333c47effa7f67a5fb168b829d2e5dada39c325d84860618959b157526d30` |
| 12 | `theorem` | [ofReal_autocorr_eq_convolution](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/ofreal-autocorr-eq-convolution.md) | 181 | `result-track:0cd72f4cbc9400fb399da5de9ca27dcec5269c27fa4f8eb58df64c6afe7d27a6` |
| 13 | `theorem` | [autocorr_continuous_of_even](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/autocorr-continuous-of-even.md) | 192 | `result-track:a4b426ae2cc26900b80f688304fd39928bab632684d3db3a7da35dfa1337f926` |
| 14 | `theorem` | [autocorr_integrable_of_even](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/autocorr-integrable-of-even.md) | 202 | `result-track:9d678b734364f05c8ec0a543a3358ab007ba3011c4fe8a070fa70127e841c01c` |
| 15 | `theorem` | [paperFT_autocorr](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/paperft-autocorr.md) | 214 | `result-track:080dcca0a51aef20625eae172a35b4c2cbbd7d7c3333d6ea58e7d0b8d0d4cb66` |
| 16 | `theorem` | [integral_mul_cos_of_paperFT_eq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-mul-cos-of-paperft-eq.md) | 229 | `result-track:fc47d6750271be25c1c8d9695caa21c5e51bf0359fb15908c0f37b65bbaf569c` |
| 17 | `theorem` | [phi_sq_even](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phi-sq-even.md) | 287 | `result-track:22036b7dec4cf726352330625bca8d33e72bac188d362e3964855f6dba64866d` |
| 18 | `theorem` | [phi_sq_hasCompactSupport](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phi-sq-hascompactsupport.md) | 289 | `result-track:16c6625ae33ce8cffbd39de0a8d2e3a80c33b58daa9db24a0ad3cf5d44b0acec` |
| 19 | `theorem` | [phiC_continuous](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phic-continuous.md) | 293 | `result-track:d41a7890f4957b05f2184a9b164ef08de22c671a17aa4943e395879c54a86337` |
| 20 | `theorem` | [phiC_hasCompactSupport](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phic-hascompactsupport.md) | 297 | `result-track:dfcca2576227d686f25f06d51b257d720427a61ad533edc4226160ecad0754a5` |
| 21 | `theorem` | [phiC_contDiff_two](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phic-contdiff-two.md) | 301 | `result-track:309963cb13d0e37719799788c65396930fa6f0364c6ce85cd0ced1cfc6ffa652` |
| 22 | `theorem` | [phiC_supp](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phic-supp.md) | 306 | `result-track:24e029abe0822c9f874dda2662230f51c8e9f20d1e79ff2280e49946a6c900df` |
| 23 | `theorem` | [phiSqC_continuous](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phisqc-continuous.md) | 309 | `result-track:b92091511c41482232cc205deb340d06c79eecc60644a42a54c59ad67d946049` |
| 24 | `theorem` | [phiSqC_hasCompactSupport](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phisqc-hascompactsupport.md) | 313 | `result-track:d14e317c1bc5084300a041d4f6c32c9fb54f7852ec808e090eb59b9e2d0528bb` |
| 25 | `theorem` | [phiSqC_contDiff_two](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phisqc-contdiff-two.md) | 317 | `result-track:656da7241601c0597c0f6b85eaf073f10509f9c724eda04df7e4ce403dfc01c8` |
| 26 | `theorem` | [phiSqC_supp](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phisqc-supp.md) | 322 | `result-track:9f979552747b7943c92db58d60b487d89592d460c61e92190517bfe8a6a4d510` |
| 27 | `theorem` | [phiHat_ofReal](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phihat-ofreal.md) | 334 | `result-track:95c295408c9ff4aee74cfeac44a78a619160add50eefeda99c09e59be2a06fc2` |
| 28 | `theorem` | [Phi_ofReal](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phi-ofreal.md) | 337 | `result-track:df38a4bd92c2136a23ee521b17616885d1cbe60ef764c1c55ef31766cd5645de` |
| 29 | `theorem` | [phiHat_conj](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phihat-conj.md) | 342 | `result-track:b6a5934d67d40ab55214ce85fba0a7ad66034000b67b2dfbdaf24be62da64b0b` |
| 30 | `theorem` | [phiHatR_even](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phihatr-even.md) | 346 | `result-track:c6c06c2c21649434c88214121a3156a5f990869f8232df43b265afe083ad57d9` |
| 31 | `theorem` | [PhiR_even](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phir-even.md) | 349 | `result-track:a59f665c89aaa04d438196724098d0749daa89e9bdd21a153b2dc376d6cd4b65` |
| 32 | `theorem` | [phiHatR_continuous](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phihatr-continuous.md) | 355 | `result-track:1add327cef276602bc1681b67324d060b46a6920c859d63e45e24100c9006aa3` |
| 33 | `theorem` | [PhiR_continuous](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phir-continuous.md) | 360 | `result-track:f6bbf44dd39bf5d20870dc3d03c5051b1ea1d234a92f44a06b61523d0dfba1ca` |
| 34 | `theorem` | [PhiR_contDiff_one](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phir-contdiff-one.md) | 366 | `result-track:a0a679a8b7aefb0cec5a10815d63ef8004537b464c343f3361f6df492f2003ef` |
| 35 | `theorem` | [paperFT_ofReal_zero](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/paperft-ofreal-zero.md) | 373 | `result-track:47f518a0f5acdebc796d8734f765587e3011cf8c4053d4a5f56cda5497f2d8fa` |
| 36 | `theorem` | [phiHatR_zero_le](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phihatr-zero-le.md) | 379 | `result-track:05f4e5fcd7a59c3da8ddbe6d3ed3f8d3d8683cfffc8acbc684f912fc68fb4942` |
| 37 | `theorem` | [PhiR_zero](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phir-zero.md) | 385 | `result-track:bfc624d612ff16edc668a896753e84bed5c6f1c31a61a1c9a6d6d3be5ca27a81` |
| 38 | `theorem` | [g_zero](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/g-zero.md) | 391 | `result-track:1488d83316d2864ce2cb0d4b01c47eb2cb52c41aa7f1111f604808764b58039d` |
| 39 | `theorem` | [Aphi_zero](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/aphi-zero.md) | 397 | `result-track:a0219d8e9d319cc162d67056022b9894d556ec901cfdd9b963adc1d5b04564d6` |
| 40 | `theorem` | [phiHatR_sq_eq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phihatr-sq-eq.md) | 406 | `result-track:9fb44395b94d65f23801df2aeed0b4cdaebc1eda09a0910e87f676073025b3f3` |
| 41 | `theorem` | [PhiR_sq_eq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/phir-sq-eq.md) | 415 | `result-track:9f3520b1a822e1b69d4f7e807c1f7a1e7fb2e4250e6a8aa8b7a60c0daa88d17e` |
| 42 | `theorem` | [integrable_phiHatR_sq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integrable-phihatr-sq.md) | 427 | `result-track:8c5f82ccdbcd86f161c6d9911c5783b5d4947a5b25a085ce77e96daf21042860` |
| 43 | `theorem` | [integrable_phiHatR_sq_mul_abs](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integrable-phihatr-sq-mul-abs.md) | 431 | `result-track:2cd940266b78f0b2e418525f0745e8fb72eb41135d199264b2cbec0acdf13fdb` |
| 44 | `theorem` | [integrable_PhiR_sq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integrable-phir-sq.md) | 435 | `result-track:50f485ee79c94dd5ac25856d9e44bfc47637f1703ca1bd05dab087af260192c5` |
| 45 | `theorem` | [integrable_PhiR_sq_mul_abs](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integrable-phir-sq-mul-abs.md) | 439 | `result-track:493b23fe05614003ef4792bc1ebd88b83b652f7b3c2548b791c98bda2b182678` |
| 46 | `theorem` | [integral_phiHatR_sq_mul_cos](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-phihatr-sq-mul-cos.md) | 447 | `result-track:fbf6bb286844002b8c5ce4d7e965f8a6382c71d5d69909b6e3a4dd32715b471e` |
| 47 | `theorem` | [integral_PhiR_sq_mul_cos](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-phir-sq-mul-cos.md) | 457 | `result-track:057564b35c441871b75f28dce899fe393bd3b4c5160cc01eb1e025497ec78eee` |
| 48 | `theorem` | [integral_phiHatR_sq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-phihatr-sq.md) | 469 | `result-track:85e8c787eaad2809718071f68d8c926d4e419851d56b4e44cee7f4178dc172f9` |
| 49 | `theorem` | [integral_PhiR_sq](../../../../MeasureAndIntegration/FourierNamespacedIntegralOfRealC.lean/declarations/integral-phir-sq.md) | 477 | `result-track:ed04734c092adc6e752532d5db987cb79327c62b3e32fa061d0cfc1b353a37f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0347fe2375e35c90fe73accce159d4a6a58b86d4d20c2f1d1b643e8f45431c8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
