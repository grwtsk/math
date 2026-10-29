# Verification target: Probability Mass Function Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dd528ca9ea934288f258a6cf7ed254abbf480ed3",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dd528ca9ea934288f258a6cf7ed254abbf480ed3`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean.json)

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
| 1 | `def` | [PMF.](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/pmf.md) | 54 | `declaration-track:7f22e4f157fa2aa32d5e00161d714ad202f9cbf4f763c20ca7559dbf7a0e5831` |
| 2 | `instance` | [instFunLike](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/instfunlike.md) | 60 | `declaration-track:cfa4f2aa861561ed7a679e23261b8dfd8838b942124260d84c6ae51963cd9d91` |
| 3 | `theorem` | [ext](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/ext.md) | 65 | `result-track:517b625f85ad03dc52b75f58ffe8b3776c0c45901f9c026b169a5b7eb0be6814` |
| 4 | `theorem` | [hasSum_coe_one](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/hassum-coe-one.md) | 68 | `result-track:eefae22eb1bbb1ae8e86cbd4ce960bbc0f464f1dec3fa9e3ecba6d6a4c028481` |
| 5 | `theorem` | [tsum_coe](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tsum-coe.md) | 72 | `result-track:4436339bc6687ea6a473bb4576bfd0364a1673a28730cf694183120a2bbbce77` |
| 6 | `theorem` | [tsum_coe_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tsum-coe-ne-top.md) | 75 | `result-track:1cfa4db607adca6a9ae85b979932ff4c5ffa78e05ebe88ea33c62ca4add64be7` |
| 7 | `theorem` | [tsum_coe_indicator_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tsum-coe-indicator-ne-top.md) | 78 | `result-track:66cdfb7dd824401b8580e5c53d5ac02b4076786dcc7e967e0f36d90c6b5034fd` |
| 8 | `theorem` | [coe_ne_zero](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/coe-ne-zero.md) | 84 | `result-track:ceb91f2155ae6659312bbb1107f1f675d7fe67e12b2ce15e47c26a858a9a8441` |
| 9 | `def` | [support](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/support.md) | 88 | `declaration-track:0b7abaae315c7bc8d2ce8a3895bb767533408631eaa21242537f9ec6ed334a0e` |
| 10 | `theorem` | [mem_support_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/mem-support-iff.md) | 92 | `result-track:eb32c8a10ebf7337b8eda6a0eddf2a075c046a0e303bc9e598fd1824cc78d2c8` |
| 11 | `theorem` | [support_nonempty](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/support-nonempty.md) | 95 | `result-track:c9bb7e79f09c671bd1662137aa914b14ac6f3e34a02ca7e781f928695ca3ef92` |
| 12 | `theorem` | [support_countable](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/support-countable.md) | 99 | `result-track:29b792868a181d8298b5e46935fcb5560c3be97cc9876e2df8d0941464bb7d4d` |
| 13 | `theorem` | [apply_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/apply-eq-zero-iff.md) | 102 | `result-track:036c2f26d485c408df3b669ca3f64d5a649dffd156e070eb02d53a4d8110b89e` |
| 14 | `theorem` | [apply_pos_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/apply-pos-iff.md) | 105 | `result-track:91e7486672e225011f8ab48b42e3c90fc8039e1dfc0f53e67f22cb8328dc591d` |
| 15 | `theorem` | [apply_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/apply-eq-one-iff.md) | 108 | `result-track:14e1167464a48b720cf079d64ec47477d993adf5159801df39aa6ec649c5e767` |
| 16 | `theorem` | [coe_le_one](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/coe-le-one.md) | 129 | `result-track:a200b40a9d5d14e03c5073049509304deff5570551615922507e41365c791f35` |
| 17 | `theorem` | [apply_ne_top](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/apply-ne-top.md) | 134 | `result-track:e35779d677b0cf80f535e4c6869c278ce7f6591a39246d09bcf9ab09a11a0876` |
| 18 | `theorem` | [apply_lt_top](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/apply-lt-top.md) | 137 | `result-track:f6688c3caacfc3addf6418232a29fe57c19e9f83942fa98a3236362e4e9275ce` |
| 19 | `def` | [toOuterMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure.md) | 146 | `declaration-track:c03f27b2c117d77e9a7fd3512e97819c382818515b8802bc4ce73dfbf11fd1ac` |
| 20 | `theorem` | [toOuterMeasure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply.md) | 151 | `result-track:f795f7ab193411a75484f758fdd0e8078568258a780b589be7617dface726464` |
| 21 | `theorem` | [toOuterMeasure_caratheodory](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-caratheodory.md) | 155 | `result-track:544565f779e9e90b9f11fc8be86cf24a357922e17a2a1bd8e1506e84beff0cc8` |
| 22 | `theorem` | [toOuterMeasure_apply_finset](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-finset.md) | 162 | `result-track:781af096bb7c22b4cdb1f524f6ad5250ad43003f276d39fef439ed481096f401` |
| 23 | `theorem` | [toOuterMeasure_apply_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-singleton.md) | 167 | `result-track:29c310673123fc877f08d9c1a1689ea8d94561780d568fd11bec10370faea3fd` |
| 24 | `theorem` | [toOuterMeasure_injective](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-injective.md) | 172 | `result-track:a321a436329e141ef09ac6975705819fe5ffa43cc909f5ec756545ea6c3202d6` |
| 25 | `theorem` | [toOuterMeasure_inj](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-inj.md) | 177 | `result-track:d6f095bde01cd1a00ce2eddb4aa697c75a92dde8f2905772a2ee44374ee8ca4d` |
| 26 | `theorem` | [toOuterMeasure_apply_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-eq-zero-iff.md) | 180 | `result-track:3a3c9e455051dc2e24afbe94471767694d3740922cd9f9507ecc274da488a904` |
| 27 | `theorem` | [toOuterMeasure_apply_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-eq-one-iff.md) | 184 | `result-track:3b2c560b50a67e1ff18c6765d5f0740237d67e5445cba04e4ea5b7ff86564816` |
| 28 | `theorem` | [toOuterMeasure_apply_inter_support](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-inter-support.md) | 198 | `result-track:9214ed76e1687c66167eb03602ff7843f6748f8ce8160c7db79a8521435ba84c` |
| 29 | `theorem` | [toOuterMeasure_mono](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-mono.md) | 203 | `result-track:ede6921504baa23b201385d56af6aec042bb9a27e0ff536013b9f1cfaae7699b` |
| 30 | `theorem` | [toOuterMeasure_apply_eq_of_inter_support_eq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-eq-of-inter-support-eq.md) | 207 | `result-track:524d7b7caa2abea98cda37d94259d0c794a9f7cc20c64c3ef2768bf28f7f52ae` |
| 31 | `theorem` | [toOuterMeasure_apply_fintype](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-fintype.md) | 213 | `result-track:05d7d2953cd9c1132280444379f8266eceb6b02ac5f07e36ab591ef3962e9f15` |
| 32 | `def` | [toMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure.md) | 222 | `declaration-track:5d92898ffa18323da5b04c76d87db319f08155ccea1ad78142ac04f6699f0a66` |
| 33 | `theorem` | [toOuterMeasure_apply_le_toMeasure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tooutermeasure-apply-le-tomeasure-apply.md) | 227 | `result-track:4271b85727a81931d8b775bfd1bba22e16fc4c0355ddc2e1b8cd45570cc92ea8` |
| 34 | `theorem` | [toMeasure_apply_eq_toOuterMeasure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-eq-tooutermeasure-apply.md) | 230 | `result-track:71a41a4424abab240ab986423e004b9d5c8cc23dfafdf34fa413653bb7be2d19` |
| 35 | `theorem` | [toMeasure_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply.md) | 234 | `result-track:ae8a84ba9331374ce03228d275300fe31f91e0c87d9b334ce1b19ac677d1546e` |
| 36 | `theorem` | [toMeasure_apply_singleton](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-singleton.md) | 237 | `result-track:2aea850e07683a6d24f25eb269ad47d106e36d602033d8fed709385959cad8dc` |
| 37 | `theorem` | [toMeasure_apply_eq_zero_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-eq-zero-iff.md) | 241 | `result-track:ba91cf498e87fc36b0c3f2e072dd62f8252397a5a78e8f3e6451a2af0b557d7c` |
| 38 | `theorem` | [toMeasure_apply_eq_one_iff](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-eq-one-iff.md) | 245 | `result-track:f602f0b6d22207ea1c7aabca84c3e8cce932d4fa6e3c5bd8292b03ac7ef3a6ce` |
| 39 | `theorem` | [toMeasure_mono](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-mono.md) | 248 | `result-track:cb5ca02352462e4ed86167e107b49214267028014fd9592c82af4dc2c5b405e0` |
| 40 | `theorem` | [toMeasure_apply_inter_support](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-inter-support.md) | 254 | `result-track:f0fec470095129732f23eb3912ddaf728f89721d719101362221f9ae964cdc49` |
| 41 | `theorem` | [restrict_toMeasure_support](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/restrict-tomeasure-support.md) | 259 | `result-track:994ca8f74a2f1cda3d0ef5a337ddb8fbb64d64fb89169f8649f62b07af0104fd` |
| 42 | `theorem` | [toMeasure_apply_eq_of_inter_support_eq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-eq-of-inter-support-eq.md) | 263 | `result-track:00cf95e77aa50a90bd0945027da40e4cfe5033a7caa7eaf571e700a4a2b9694f` |
| 43 | `theorem` | [toMeasure_injective](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-injective.md) | 272 | `result-track:979ed9bcc873eafabf1f036d5b96f1dda157b96a52d29137f14a0364d02866cd` |
| 44 | `theorem` | [toMeasure_inj](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-inj.md) | 279 | `result-track:aea5c9cd76250eb8c7f72e390b9126ef03a294a4860c4a6cf2c70585b16e099e` |
| 45 | `theorem` | [toMeasure_apply_eq_toOuterMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-eq-tooutermeasure.md) | 282 | `result-track:6a593127e94af4dba19a92e25959a4995547bb5a0c55f953505b5aaefdbdecc3` |
| 46 | `theorem` | [toMeasure_apply_finset](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-finset.md) | 288 | `result-track:fd43c607805039e9997b2e92c0b32e70804bfc76ae9badff35c3d61cffed0b1c` |
| 47 | `theorem` | [toMeasure_apply_eq_tsum](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-eq-tsum.md) | 291 | `result-track:47b0eb48f5b7a1c74ad28fb3bc0da0101b4e36b23b2458b40e14d9eff1432be6` |
| 48 | `theorem` | [toMeasure_apply_fintype](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-apply-fintype.md) | 295 | `result-track:84709b789b6d74a21d470a6e59799114c5cb1882505150e4fe4dab64fa32a329` |
| 49 | `def` | [toPMF](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/topmf.md) | 313 | `declaration-track:419b13753e5dbcc86382403e09decc80ce3c37cdeb7e3a6e75a4923cae6916cf` |
| 50 | `theorem` | [toPMF_apply](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/topmf-apply.md) | 326 | `result-track:ad4526ebf14f866c2dfcff203b1aeba01c8a1cd9c6918e8e717722c1071f97cb` |
| 51 | `theorem` | [toPMF_toMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/topmf-tomeasure.md) | 329 | `result-track:6a9c381b1cba6fcfea2e6ba81deb72a065b703e71a77d3e878bc5de2c56ed633` |
| 52 | `instance` | [toMeasure.isProbabilityMeasure](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-isprobabilitymeasure.md) | 341 | `declaration-track:ad667292335c07a0a6cf3a1b31a251e9351582d8a17bea9a53f4585aa3b2e5e9` |
| 53 | `theorem` | [toMeasure_toPMF](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-topmf.md) | 350 | `result-track:ef56baedb1afda0bca9a3f4db996152e023e8644ead003b441729293ef332270` |
| 54 | `theorem` | [toMeasure_eq_iff_eq_toPMF](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/tomeasure-eq-iff-eq-topmf.md) | 354 | `result-track:f320b088c89d887ae73e4130265148553a7b73831c57100ed105cf8d18a08663` |
| 55 | `theorem` | [toPMF_eq_iff_toMeasure_eq](../../../../ProbabilityTheoryAndStochasticProcesses/ProbabilityMassFunctionBasicNamespacedPublic.lean/declarations/topmf-eq-iff-tomeasure-eq.md) | 357 | `result-track:12d3d2ca1d9fabce5d4686923ed7a47eeddc854991345b8908f22541e6b295f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bce00a37a321691c59dd11320d0261b5fee79b2ea7855a239d51707d061a7173 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/Basic/Variant3aebb43695c4cee6121d388d960147ed4ef96669b6ad108e9c5ddff6bb525738.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
