# Verification target: Implicit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "252a095742f47e591d30e84391829627937c5eae",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ImplicitPublic.lean/index.md) · [Full source](../../../../RealFunctions/ImplicitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `252a095742f47e591d30e84391829627937c5eae`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean.json)

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
| 1 | `structure` | [ImplicitFunctionData](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunctiondata.md) | 100 | `declaration-track:629fc3015ca3133fc110bbe8f9844070dd2d8622d92cfaf96264ba0f6c5d1a31` |
| 2 | `def` | [prodFun](../../../../RealFunctions/ImplicitPublic.lean/declarations/prodfun.md) | 128 | `declaration-track:3b7c4168c1bbded882398783a064d0f96cef30270a9e88ee0348c36bf4dbd956` |
| 3 | `theorem` | [prodFun_apply](../../../../RealFunctions/ImplicitPublic.lean/declarations/prodfun-apply.md) | 132 | `result-track:6bfc2e3e95e5380ad92ef0b52c3093dacf92178d23c0e6a25f1e5867f2bcc24a` |
| 4 | `theorem` | [hasStrictFDerivAt](../../../../RealFunctions/ImplicitPublic.lean/declarations/hasstrictfderivat.md) | 135 | `result-track:7ede5b46bd649142ea655903f1b5315b4010315b540485472c0828ef3bd93d87` |
| 5 | `theorem` | [isInvertible_fderiv_prodFun](../../../../RealFunctions/ImplicitPublic.lean/declarations/isinvertible-fderiv-prodfun.md) | 143 | `result-track:3f44e1e990c3ee00ac34c6ea68c327ebf14cf74886590ce36f9b3a9548153028` |
| 6 | `def` | [toOpenPartialHomeomorph](../../../../RealFunctions/ImplicitPublic.lean/declarations/toopenpartialhomeomorph.md) | 151 | `declaration-track:78155bed21e5547e6bf5ce18fbcd08a76718b37d8363c9341da7dfe70446456d` |
| 7 | `def` | [implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunction-source-edition-2.md) | 158 | `declaration-track:e214c1bfb3b391865b57c0c945898c40ee583af0e74c6676bb6617f05324c5a7` |
| 8 | `theorem` | [implicitFunction_def](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunction-def.md) | 161 | `result-track:979dc1b6683b8e8f10eefa64afb8088bcdf597f3c77b039ca8e4fcad7222ddd9` |
| 9 | `lemma` | [implicitFunction_apply](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunction-apply.md) | 165 | `result-track:da976a9ec2f28974f703d8c6f969063131596b936afd25fc6d2c9ea4980d4cd0` |
| 10 | `theorem` | [toOpenPartialHomeomorph_coe](../../../../RealFunctions/ImplicitPublic.lean/declarations/toopenpartialhomeomorph-coe.md) | 170 | `result-track:8b53a7d9c96d7c4e2a99d4b82f48e8abf7a77475232f2a3f8a538ecefd6231e2` |
| 11 | `theorem` | [toOpenPartialHomeomorph_apply](../../../../RealFunctions/ImplicitPublic.lean/declarations/toopenpartialhomeomorph-apply.md) | 173 | `result-track:c605dc76a271a02a9195c4e706c105a9dc7e99ad7b962768381189c97460b78b` |
| 12 | `theorem` | [pt_mem_toOpenPartialHomeomorph_source](../../../../RealFunctions/ImplicitPublic.lean/declarations/pt-mem-toopenpartialhomeomorph-source.md) | 177 | `result-track:2ac75268f821d3914ff5ab776fd0d2cfff83e0d886eaac9e16a9e9632d8b98c6` |
| 13 | `theorem` | [map_pt_mem_toOpenPartialHomeomorph_target](../../../../RealFunctions/ImplicitPublic.lean/declarations/map-pt-mem-toopenpartialhomeomorph-target.md) | 180 | `result-track:428064c9aaffeadf15c9a3198716131d7683c5cc6711892e6c06abf3010f0d78` |
| 14 | `theorem` | [prodFun_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/prodfun-implicitfunction.md) | 184 | `result-track:790549e6aa7b0fef0d38c1e8b0105ff228146889c0d6d5bf29fe4efe857c6086` |
| 15 | `theorem` | [leftFun_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/leftfun-implicitfunction.md) | 188 | `result-track:66a9ca015b23e81ad865bbce8fbf7a1a64af61fac8a6f6736a81717184d46caa` |
| 16 | `theorem` | [rightFun_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/rightfun-implicitfunction.md) | 192 | `result-track:2fdf0c648f310615fca320a54535d9e4964ff593f82866ac326bf9416ace121a` |
| 17 | `theorem` | [implicitFunction_apply_image](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunction-apply-image-source-edition-2.md) | 196 | `result-track:c5fe83c6476cca2f67467d73b966a4e06cfda7143adaf0de8b98e80cf641d867` |
| 18 | `theorem` | [leftFun_implicitFunction_eq_leftFun](../../../../RealFunctions/ImplicitPublic.lean/declarations/leftfun-implicitfunction-eq-leftfun.md) | 200 | `result-track:2e95ffd35c56a2fa4e73b70c57a5f467becadefedf25b09bda230b5f0dd4bfd7` |
| 19 | `theorem` | [rightFun_implicitFunction_eq_rightFun](../../../../RealFunctions/ImplicitPublic.lean/declarations/rightfun-implicitfunction-eq-rightfun.md) | 205 | `result-track:8afaafd07fe4c369d8092e38a1e2a987835bad55a28a6fb882c15c7122fa117b` |
| 20 | `theorem` | [leftFun_eq_iff_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/leftfun-eq-iff-implicitfunction.md) | 210 | `result-track:5e895fa596abec5e75f76f60d4f6a12320815ed6a86dc00dfe18bdfda200591b` |
| 21 | `theorem` | [map_nhds_eq](../../../../RealFunctions/ImplicitPublic.lean/declarations/map-nhds-eq.md) | 215 | `result-track:67378c5bc23614fdcdeffc679372361813f5b01decdcb8723d6c3120cb487cba` |
| 22 | `theorem` | [hasStrictFDerivAt_implicitFunction_fderiv](../../../../RealFunctions/ImplicitPublic.lean/declarations/hasstrictfderivat-implicitfunction-fderiv.md) | 220 | `result-track:c1991a635cbda23bc90839043f8f72607d7bc1cc8ffa7dbc9d6465b2a1c24b40` |
| 23 | `theorem` | [differentiableAt_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/differentiableat-implicitfunction.md) | 228 | `result-track:3e86a55f9419a39d12ade37c655cf800359c8450e51c9a10e6833c70d264365e` |
| 24 | `theorem` | [fderiv_implicitFunction_apply_eq_iff](../../../../RealFunctions/ImplicitPublic.lean/declarations/fderiv-implicitfunction-apply-eq-iff.md) | 232 | `result-track:4e02d57c455a634753c3035181094689ae9ca9618ff461274ef8d930bdcd1ada` |
| 25 | `theorem` | [leftDeriv_fderiv_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/leftderiv-fderiv-implicitfunction.md) | 243 | `result-track:6b9e4028b2ace0dd3d806aa7fce185ecfe301f418b101283a89ca3f460c744e0` |
| 26 | `theorem` | [rightDeriv_fderiv_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/rightderiv-fderiv-implicitfunction.md) | 248 | `result-track:824926a155afb0c61168bed488b700492e6aa59b345f6a95e690bdcec37e9880` |
| 27 | `theorem` | [hasStrictFDerivAt_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/hasstrictfderivat-implicitfunction.md) | 252 | `result-track:44ea5ba6942f8cd88ac93167454817e4fd744605da1e46c53d30d5c52a436828` |
| 28 | `theorem` | [map_implicitFunction_nhdsWithin_preimage](../../../../RealFunctions/ImplicitPublic.lean/declarations/map-implicitfunction-nhdswithin-preimage.md) | 261 | `result-track:59129ab30cc92752b93b3cec152edbb38a6542ac43cd2adbf6d886e7ade34be0` |
| 29 | `theorem` | [eventuallyEq_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/eventuallyeq-implicitfunction.md) | 284 | `result-track:a6e81de6dbb0052789237e243a55e6967d4329d8569235c8331ca88584308c41` |
| 30 | `def` | [implicitFunctionDataOfComplemented](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunctiondataofcomplemented.md) | 320 | `declaration-track:615d5408f31db4b5dddadcf97588a8f278394787c31c702f50945fd6a2a4aace` |
| 31 | `def` | [implicitToOpenPartialHomeomorphOfComplemented](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented.md) | 336 | `declaration-track:1e1de027c1a5a9aa114a36bf3e0c89fa434a8d94004a8c631cffacf157f5c532` |
| 32 | `def` | [implicitFunctionOfComplemented](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunctionofcomplemented.md) | 342 | `declaration-track:f5f751b6161a726c924a6e69185c56e92f567e02b2c756b70a9c38fff3d9b4ba` |
| 33 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_fst](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-fst.md) | 349 | `result-track:e07ed06e141147fe8fbd4cb846988774cde214e0c8fc8dc1a2d216a6df6f2809` |
| 34 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_apply](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-apply.md) | 354 | `result-track:2aa96cf4588d441b964da7593d6ab97016aea001fc4a72c6e505cdc065bcc550` |
| 35 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_apply_ker](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-apply-ker.md) | 361 | `result-track:811c002360409ee3a43332e3bc21ce6d9349f58f4d7fe3070bd00f1f625eb166` |
| 36 | `theorem` | [implicitToOpenPartialHomeomorphOfComplemented_self](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorphofcomplemented-self.md) | 368 | `result-track:14d315cd9e3d17d29545edcdb046fa739d6711b0afe2b8c5e108d1acd6dd92e3` |
| 37 | `theorem` | [mem_implicitToOpenPartialHomeomorphOfComplemented_source](../../../../RealFunctions/ImplicitPublic.lean/declarations/mem-implicittoopenpartialhomeomorphofcomplemented-source.md) | 373 | `result-track:2357e82db28ce549998023660c179db35d4ec01df8e05d51325b9f71a556818f` |
| 38 | `theorem` | [mem_implicitToOpenPartialHomeomorphOfComplemented_target](../../../../RealFunctions/ImplicitPublic.lean/declarations/mem-implicittoopenpartialhomeomorphofcomplemented-target.md) | 378 | `result-track:5ac1cc25cc18e845d10c6ac19b3e5b1f64192f2b801e71b08c88ee3ff33fe0d5` |
| 39 | `theorem` | [map_implicitFunctionOfComplemented_eq](../../../../RealFunctions/ImplicitPublic.lean/declarations/map-implicitfunctionofcomplemented-eq.md) | 387 | `result-track:02b9ee1e8ced2c3ffb13cbd6217988a929247fa1f7c77144335ae6ea7b12cde5` |
| 40 | `theorem` | [eq_implicitFunctionOfComplemented](../../../../RealFunctions/ImplicitPublic.lean/declarations/eq-implicitfunctionofcomplemented.md) | 397 | `result-track:19824ee0d25232491230f7e44938390db4be4efa32078ca51eb9d1934d878a60` |
| 41 | `theorem` | [implicitFunctionOfComplemented_apply_image](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunctionofcomplemented-apply-image.md) | 404 | `result-track:d867c9574687867d391be6793ed01eb77e882b761dffc8dee5f836220f3d684a` |
| 42 | `theorem` | [to_implicitFunctionOfComplemented](../../../../RealFunctions/ImplicitPublic.lean/declarations/to-implicitfunctionofcomplemented.md) | 412 | `result-track:f405737951ee537c22138365cb96bfe186c2d63bb755131ef052ee391571d7c9` |
| 43 | `def` | [implicitToOpenPartialHomeomorph](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorph.md) | 457 | `declaration-track:4ebd0819ec2c559272aeccd9251063cfb96d2df855f136f7e328c4ea0c47d1bf` |
| 44 | `def` | [implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunction.md) | 464 | `declaration-track:50f82a0f0297e5bd09e8966230c7030e93d306242814560435b821338abd3b4c` |
| 45 | `theorem` | [implicitToOpenPartialHomeomorph_fst](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorph-fst.md) | 470 | `result-track:27238f9b48b36cdeb931feb80bc07c0e3bc08e52ccf1f6dbca8873388916a17a` |
| 46 | `theorem` | [implicitToOpenPartialHomeomorph_apply_ker](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorph-apply-ker.md) | 475 | `result-track:9dbc7dfd05454a9ff204ec501cbef95234268d0cd21e9269992c1c9834eb5c41` |
| 47 | `theorem` | [implicitToOpenPartialHomeomorph_self](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicittoopenpartialhomeomorph-self.md) | 482 | `result-track:e73d5643b474319361d505afe2b4ac3264302e13ddf33ff1ea6fc16f378e1bac` |
| 48 | `theorem` | [mem_implicitToOpenPartialHomeomorph_source](../../../../RealFunctions/ImplicitPublic.lean/declarations/mem-implicittoopenpartialhomeomorph-source.md) | 487 | `result-track:c494fc56df96ff8de41dd896288899c0f30a350faaf0a61a968987573081ded2` |
| 49 | `theorem` | [mem_implicitToOpenPartialHomeomorph_target](../../../../RealFunctions/ImplicitPublic.lean/declarations/mem-implicittoopenpartialhomeomorph-target.md) | 492 | `result-track:6c71b213b7c40e49226b9e0960c4f70f2bf87393bdb2a8e9eb124812c3a4a739` |
| 50 | `theorem` | [tendsto_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/tendsto-implicitfunction.md) | 498 | `result-track:f62e936dcaa9001681cc2219799ba9f59fa9ffeb80d3066f46d4b925da4e92c6` |
| 51 | `theorem` | [map_implicitFunction_eq](../../../../RealFunctions/ImplicitPublic.lean/declarations/map-implicitfunction-eq.md) | 510 | `result-track:d23109d088fea0520ab29590bec674e00a97985e1287fc728ef1a8f66586edca` |
| 52 | `theorem` | [implicitFunction_apply_image](../../../../RealFunctions/ImplicitPublic.lean/declarations/implicitfunction-apply-image.md) | 516 | `result-track:49fc06606411cd9e88bc9270cdbe2a17aa27d179d5e6adf3fe9b0684722858a6` |
| 53 | `theorem` | [eq_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/eq-implicitfunction.md) | 523 | `result-track:8a44dbd1b539499467320665c856a7460bf8bb3ebbbe4a447da8ba796ba1021a` |
| 54 | `theorem` | [to_implicitFunction](../../../../RealFunctions/ImplicitPublic.lean/declarations/to-implicitfunction.md) | 529 | `result-track:d5f1500d18997b068a9a565982bd0d729f9fae8cceaaff308d082cb8b33975c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6f282ac3a7345980651439edf7020e9d9edaa00a9f5a4101791388d8dfa39849 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
