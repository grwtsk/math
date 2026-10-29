# Verification target: Disintegration Density Density Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c54d2a81aa55cbf10c367d7a98e79f17b509a10",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c54d2a81aa55cbf10c367d7a98e79f17b509a10`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean.json)

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
| 1 | `def` | [densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess.md) | 97 | `declaration-track:da59a6f86d7e4174b4feabf93bc2039902f3cba0f8a3baaea5a1e5a4f9a6332a` |
| 2 | `lemma` | [densityProcess_def](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-def.md) | 101 | `result-track:d61446259eeb1e36ff275a3bc7e247c473b3ab9b4ac2c546ab1a0e13d2faf4eb` |
| 3 | `lemma` | [measurable_densityProcess_countableFiltration_aux](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-densityprocess-countablefiltration-aux.md) | 106 | `result-track:d62a104b747086e0b87de94f3d8936181c14fb0fac6bf2cc679ed116d9f2707b` |
| 4 | `lemma` | [measurable_densityProcess_aux](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-densityprocess-aux.md) | 126 | `result-track:8b9462f0ce9af94ea04d48018ae7bffdb8ad55db5c9881b49243c61309da08b6` |
| 5 | `lemma` | [measurable_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-densityprocess.md) | 133 | `result-track:870f51290d46c120369044851fbbf25e90f13ca1164a3b95a23265315ce63566` |
| 6 | `lemma` | [measurable_densityProcess_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-densityprocess-left.md) | 139 | `result-track:45111dd0f35053f879eb4551b7f617dba28a3f6749d420a567619ea6faa27680` |
| 7 | `lemma` | [measurable_densityProcess_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-densityprocess-right.md) | 144 | `result-track:8faafa5d630c834c531c459dc9a5e99f3b897897a46203b2968a6af47c114d46` |
| 8 | `lemma` | [measurable_countableFiltration_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-countablefiltration-densityprocess.md) | 149 | `result-track:1f8fb97d92ce47d684e93bb8d0ab182da7770ae7f80e87cf00eaf90f5c408afc` |
| 9 | `lemma` | [stronglyMeasurable_countableFiltration_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/stronglymeasurable-countablefiltration-densityprocess.md) | 156 | `result-track:17aeb50a761e4569a341bed445ea689a06c379a49447706fec297447b2e45ff4` |
| 10 | `lemma` | [stronglyAdapted_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/stronglyadapted-densityprocess.md) | 161 | `result-track:f10530ea06f60a94ea49315f223970502dab42a6cac254990db4bf4ed526f5c5` |
| 11 | `lemma` | [densityProcess_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-nonneg.md) | 166 | `result-track:7df1f4bcd14d9c49141e013aed95578eca4ec8f7a5dd23a30d3315b4b3ff0447` |
| 12 | `lemma` | [meas_countablePartitionSet_le_of_fst_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/meas-countablepartitionset-le-of-fst-le.md) | 171 | `result-track:a43010c269d2c47c82c7c297f664a8207345d432929f17362abb2c2e2eaa3b2b` |
| 13 | `lemma` | [densityProcess_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-le-one.md) | 182 | `result-track:cb3031413714a485e81bdd67e75666bec7db1933d37450095742415158157d41` |
| 14 | `lemma` | [eLpNorm_densityProcess_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/elpnorm-densityprocess-le.md) | 188 | `result-track:ef624fe99e856d0c69312add0e8045414d5071c07171b2aa0cc375f834f05dfb` |
| 15 | `lemma` | [integrable_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/integrable-densityprocess.md) | 198 | `result-track:c015115dff88bb371fb99b103a45a53a0ebd3003b850415f3cffc1238c66f2aa` |
| 16 | `lemma` | [setIntegral_densityProcess_of_mem](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/setintegral-densityprocess-of-mem.md) | 204 | `result-track:4bbc606b68195f4e545b70b3d87409e061d9a0eb7ae11279673eb15c9774cb71` |
| 17 | `lemma` | [setIntegral_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/setintegral-densityprocess.md) | 245 | `result-track:219961a3ff2e8b60878de3d6d714fc6d02944c3b50475311d7d7f5daaa81514b` |
| 18 | `lemma` | [integral_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/integral-densityprocess.md) | 270 | `result-track:d15eac14c8fd5338c13383c400a3a003ff89b1d9cf844d42f974ae80c2960a6d` |
| 19 | `lemma` | [setIntegral_densityProcess_of_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/setintegral-densityprocess-of-le.md) | 275 | `result-track:3bc25499dbcb6672d585eff7d0ef41ccafc00a40382efa08c84bd97d43bba9b0` |
| 20 | `lemma` | [condExp_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/condexp-densityprocess.md) | 281 | `result-track:9d1a5547490fc01ecb3c9169498f2cf8134f7ac4658d09c52ec87ac6a0dad985` |
| 21 | `lemma` | [martingale_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/martingale-densityprocess.md) | 294 | `result-track:97e509db1550b58fb6f66aad369211f7d1a34391f0ef519b137c40cf207e4f77` |
| 22 | `lemma` | [densityProcess_mono_set](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-mono-set.md) | 299 | `result-track:4286ceef4a18ebd76231f73e771325f1e11fa163031f8209d7117f737713e124` |
| 23 | `lemma` | [densityProcess_mono_kernel_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-mono-kernel-left.md) | 309 | `result-track:22caa26937cd034ecdf00f3431449c0de4ffce1e918e414fd5b5999393130883` |
| 24 | `lemma` | [densityProcess_antitone_kernel_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-antitone-kernel-right.md) | 323 | `result-track:1b445d7f1147262250d4dba1e879ad6649792c8fb351bc54bd3a281b735e0277` |
| 25 | `lemma` | [densityProcess_empty](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-empty.md) | 337 | `result-track:ba060d9991ad94f7c45face54d6886f3a11f1906213ed54db122a9cd9ceb6c99` |
| 26 | `lemma` | [tendsto_densityProcess_atTop_empty_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-densityprocess-attop-empty-of-antitone.md) | 341 | `result-track:37a617462e6d4943ee6093d457a955078a2b61efc04508505dcb0105ffb356ba` |
| 27 | `lemma` | [tendsto_densityProcess_atTop_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-densityprocess-attop-of-antitone.md) | 363 | `result-track:587e34324a5705ba5c6d291bfbb4106c252386fea2f13dcb9022866e69ab8747` |
| 28 | `lemma` | [tendsto_densityProcess_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-densityprocess-limitprocess.md) | 371 | `result-track:a2ffef489010a45b2ecd27329bdab563ba232c0a1bf9b2be94a4f6ec309635f6` |
| 29 | `lemma` | [memL1_limitProcess_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/meml1-limitprocess-densityprocess.md) | 382 | `result-track:13ac06bdfc5713fa35bea1779c77efa38af4975b7188883fcfd45f64f89be282` |
| 30 | `lemma` | [tendsto_eLpNorm_one_densityProcess_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-elpnorm-one-densityprocess-limitprocess.md) | 392 | `result-track:db88851f6b891c264866486c68970360ee59ff8d8cc14377316fee01aa652734` |
| 31 | `lemma` | [tendsto_eLpNorm_one_restrict_densityProcess_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-elpnorm-one-restrict-densityprocess-limitprocess.md) | 409 | `result-track:fb72f65432383cd6cea75dd07e9051b2e5e3671206a30839f63e2e4f231f7fa8` |
| 32 | `def` | [density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/density.md) | 426 | `declaration-track:425a231e546afb2818ea9cf2467501cb78506d965033902fc94bae7a410cca36` |
| 33 | `lemma` | [density_ae_eq_limitProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/density-ae-eq-limitprocess.md) | 429 | `result-track:31055eaf3da42b1454bdf52a6523c9695fc1e7e7f7530a4e7112263eb60e4b79` |
| 34 | `lemma` | [tendsto_m_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-m-density.md) | 436 | `result-track:38c9ae4ddcdd34e3d816688d51547326e4b649f443dbfeb63be683cdf4c91a5f` |
| 35 | `lemma` | [measurable_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-density.md) | 443 | `result-track:49a92523909f599dc0868b4ec0d9631fa0edbb529da022ec045a78d46b4cb03e` |
| 36 | `lemma` | [measurable_density_left](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-density-left.md) | 448 | `result-track:d6f331e4716cc46bd4bfa8e659e99a4f070c2c7d1c578d35c83691fc8847ec26` |
| 37 | `lemma` | [measurable_density_right](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/measurable-density-right.md) | 454 | `result-track:1912551b9a88676900c63eed939f8ad79b36889c2ecec37d6c2b381792a17a21` |
| 38 | `lemma` | [density_mono_set](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/density-mono-set.md) | 460 | `result-track:227e0ba59028e2e82b6e2d6c0cc87e03b77fc582f8974e108dd2d5f2893382a7` |
| 39 | `lemma` | [density_nonneg](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/density-nonneg.md) | 467 | `result-track:b0e8599e0f623a8a0035c3b17019e4740b6ec48a61fe406bd768590fdef53f10` |
| 40 | `lemma` | [density_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/density-le-one.md) | 473 | `result-track:d469fd2a6a010ed9d1e5b7d15156db8d56ca711174daafdc555509b298b237d6` |
| 41 | `lemma` | [eLpNorm_density_le](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/elpnorm-density-le.md) | 481 | `result-track:712f34e4050de4883646c3eb0082a6c52e1848d12191947e0db8fd2d49676746` |
| 42 | `lemma` | [integrable_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/integrable-density.md) | 490 | `result-track:b0295d06e3e8ca10424e6232feef2e3a1c3deae407f6df09c75d593b8c13fa8b` |
| 43 | `lemma` | [tendsto_setIntegral_densityProcess](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-setintegral-densityprocess.md) | 497 | `result-track:306782473b5770f9d7d0e4836170019b0429b1f50ee226147cc79cc2877ee2cc` |
| 44 | `lemma` | [setIntegral_density_of_measurableSet](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/setintegral-density-of-measurableset.md) | 509 | `result-track:8e2dd1df60283799b53448f72d42c092bf74aa306a4aea2db8e52c493249f4b2` |
| 45 | `lemma` | [integral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/integral-density.md) | 527 | `result-track:47b743c31b43d634c9b71ab983c600e7dfab825f93a66a36948f7d6fc50ec63d` |
| 46 | `lemma` | [setIntegral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/setintegral-density.md) | 532 | `result-track:cdce3a53bcd30bb34ccaac5816ff2da61bc5c36e3f52474173f5947c26a18b08` |
| 47 | `lemma` | [setLIntegral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/setlintegral-density.md) | 571 | `result-track:2dc6601901963fbd8a70a971a2433d44f1a224e8642fd587a3a4b3dfdd0f4dc1` |
| 48 | `lemma` | [lintegral_density](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/lintegral-density.md) | 580 | `result-track:57285d17720b9c04587f54c22dc0ea1290d2eae470ba5f5678b73412dc7b9a9d` |
| 49 | `lemma` | [tendsto_integral_density_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-integral-density-of-monotone.md) | 588 | `result-track:b2cc07c5aa4fdf3d7adeb08c545e5582dded4e5be9aafd5ea3214247e4cc95c9` |
| 50 | `lemma` | [tendsto_integral_density_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-integral-density-of-antitone.md) | 605 | `result-track:7413a530012df93826ac0a2f220538224864557b11388840c2d5317d1eec50b2` |
| 51 | `lemma` | [tendsto_density_atTop_ae_of_antitone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-density-attop-ae-of-antitone.md) | 621 | `result-track:d8ae54bd438ba8bdb4cbfab83f06187d70f4e6a71d074c0d6b9bf9079681e2b8` |
| 52 | `lemma` | [densityProcess_fst_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-fst-univ.md) | 636 | `result-track:40c0cde94e3bb5377fc34bb5517bfefab6823e431800ef46cced0320da1322d9` |
| 53 | `lemma` | [densityProcess_fst_univ_ae](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/densityprocess-fst-univ-ae.md) | 654 | `result-track:f902ae30bed58aa5ed6fff59ab6d3c926d1a8f5b9629dd7e0d5a378e6c2e1b90` |
| 54 | `lemma` | [tendsto_densityProcess_fst_atTop_univ_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-densityprocess-fst-attop-univ-of-monotone.md) | 682 | `result-track:e92cf350992ea86a4b3c288e2d56414928b51c22ac77314f6aa6f4fb354f0b4c` |
| 55 | `lemma` | [tendsto_densityProcess_fst_atTop_ae_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-densityprocess-fst-attop-ae-of-monotone.md) | 715 | `result-track:9810c17c182c5fd7b33c290b8cd488bd111ea7d9e92557b984d9acc64bbd8b1f` |
| 56 | `lemma` | [density_fst_univ](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/density-fst-univ.md) | 722 | `result-track:954e13dd8427316b8a4a45676e483a917b1c47b6b14bdfd69d2829b406b76e33` |
| 57 | `lemma` | [tendsto_density_fst_atTop_ae_of_monotone](../../../../ProbabilityTheoryAndStochasticProcesses/DisintegrationDensityDensityPublic.lean/declarations/tendsto-density-fst-attop-ae-of-monotone.md) | 729 | `result-track:ed0667d8d59612d76211b31d72ec6f2f2dd5c9edfd8a9df6db49b3932cb65b57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9af48b012be92f4bf9b6d0f13e2ec652078d8ec6e59c58a1a6eaab9d9839027d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/Density/Variantb9b1b866366831ac7ebf263f8cfe62f5df0ac46924aae7c46fb8359993b65d2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
