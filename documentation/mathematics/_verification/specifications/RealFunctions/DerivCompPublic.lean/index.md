# Verification target: Deriv Comp Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d5a0dd83652c1f59c57cadca2029582db3838fa8",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4ed965b4b0a3a62724cade9cb1b89b00c2201195a575dc9ab2a2f32a42869bc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivCompPublic.lean/index.md) · [Full source](../../../../RealFunctions/DerivCompPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d5a0dd83652c1f59c57cadca2029582db3838fa8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4ed965b4b0a3a62724cade9cb1b89b00c2201195a575dc9ab2a2f32a42869bc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4ed965b4b0a3a62724cade9cb1b89b00c2201195a575dc9ab2a2f32a42869bc3.lean.json)

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
| 1 | `theorem` | [HasDerivAtFilter.scomp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivatfilter-scomp.md) | 73 | `result-track:fb8a18d14c6a34c8d6ae21b69d5ffeab2f387ba5952fef0203af4df0a29495f9` |
| 2 | `theorem` | [HasDerivWithinAt.scomp_hasDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-scomp-hasderivat.md) | 78 | `result-track:503629da0ef20cc1c2b2c24be38b3109974ab75a09d03b0252bb32b1949b559b` |
| 3 | `theorem` | [HasDerivWithinAt.scomp_hasDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-scomp-hasderivat-of-eq.md) | 83 | `result-track:41cf4cf97d3a8bfd87493ff5d65280c9a2c7563a0c6adbfa5d4546b949013a10` |
| 4 | `theorem` | [HasDerivWithinAt.scomp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-scomp.md) | 88 | `result-track:8a60010c007aff488a9a60596ae4c3fbcdde522643c71d93a9752bd0cb5c9b21` |
| 5 | `theorem` | [HasDerivWithinAt.scomp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-scomp-of-eq.md) | 94 | `result-track:14856aeac5b71702dbd2cbb27bc43ee63899df11da04f0a4dd38a052a446a477` |
| 6 | `theorem` | [HasDerivAt.scomp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-scomp.md) | 100 | `result-track:f4a61837dc8f8c6dff409bd1f43ef81417c4e9cebb2b14d9d9527e2f2f81d0ca` |
| 7 | `theorem` | [HasDerivAt.scomp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-scomp-of-eq.md) | 105 | `result-track:087c0b5a00a1f70e3c5c88a68b12e65333bb0f8f9c6768b3e25c8d6b8e3de5fb` |
| 8 | `theorem` | [HasStrictDerivAt.scomp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-scomp.md) | 110 | `result-track:1b523ed7fbdfd3136266b01040e97f0075aff377e84e473d96572c1f66977b75` |
| 9 | `theorem` | [HasStrictDerivAt.scomp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-scomp-of-eq.md) | 115 | `result-track:2d776d185933548be84cb11ffd1ceb68cc9275402c89b7dacec3e6c53ca8762b` |
| 10 | `theorem` | [HasDerivAt.scomp_hasDerivWithinAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-scomp-hasderivwithinat.md) | 120 | `result-track:0b69a5f2051918732568e6ea84541e2140716790f339c18b48fd514e3c187cd1` |
| 11 | `theorem` | [HasDerivAt.scomp_hasDerivWithinAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-scomp-hasderivwithinat-of-eq.md) | 124 | `result-track:801c25c65de39510f582e291d09763305b54e8058df17c9ab9914893cd63479a` |
| 12 | `theorem` | [derivWithin.scomp](../../../../RealFunctions/DerivCompPublic.lean/declarations/derivwithin-scomp.md) | 129 | `result-track:9630d8c561461017067671b54a9c79a6aac158f9ed25831f4019f7d4b897f70f` |
| 13 | `theorem` | [derivWithin.scomp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/derivwithin-scomp-of-eq.md) | 136 | `result-track:6e5501a59be653f99d122a79a1d6b57dd40eced78c0ee8996ccb502d5f133393` |
| 14 | `theorem` | [deriv.scomp](../../../../RealFunctions/DerivCompPublic.lean/declarations/deriv-scomp.md) | 142 | `result-track:d7ad257fd82fa70ec3df996db4f88e04640b4457d729d61dbe5a85feac870f59` |
| 15 | `theorem` | [deriv.scomp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/deriv-scomp-of-eq.md) | 146 | `result-track:6800c032ff3eb7956eb5032374c707f38a9c72ae642edacd557d5955ce49e4aa` |
| 16 | `theorem` | [HasDerivAtFilter.comp_hasFDerivAtFilter](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivatfilter-comp-hasfderivatfilter.md) | 153 | `result-track:179e0ea7a29e59271bf7d57f7e4f40f8a227edf6b785b86a2cfebd899c0ed96c` |
| 17 | `theorem` | [HasStrictDerivAt.comp_hasStrictFDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-comp-hasstrictfderivat.md) | 161 | `result-track:e7c3f3dde3900ea504899644f9e8438c296ff2e98d90ca2ce8bed2cef2b05572` |
| 18 | `theorem` | [HasStrictDerivAt.comp_hasStrictFDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-comp-hasstrictfderivat-of-eq.md) | 166 | `result-track:c1b460d13ac5ef069b91ab18cda48c7cac51eff4d1ee2a768120b912485aabb8` |
| 19 | `theorem` | [HasDerivAt.comp_hasFDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-hasfderivat.md) | 171 | `result-track:35244bd761575b41e1e689efa6be59f4488b4c99d6dd88217c610564922c8e0e` |
| 20 | `theorem` | [HasDerivAt.comp_hasFDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-hasfderivat-of-eq.md) | 175 | `result-track:9ad770ca3ef2fa68348363c1f6a995fbddb25fadd11fb50df1210351ac8a44d3` |
| 21 | `theorem` | [HasDerivAt.comp_hasFDerivWithinAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-hasfderivwithinat.md) | 180 | `result-track:f10b0b6906a88167fe7ab406ce5c0f8885e38d5d78b4e90f4dcd7c49254bfaeb` |
| 22 | `theorem` | [HasDerivAt.comp_hasFDerivWithinAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-hasfderivwithinat-of-eq.md) | 185 | `result-track:5ea895e317e5ec13fcee35baaa3478bfbb07f4809347adaa29da5ffda48964c3` |
| 23 | `theorem` | [HasDerivWithinAt.comp_hasFDerivWithinAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-hasfderivwithinat.md) | 190 | `result-track:ae2ecb8635e79633745e8d39aefb729a087e69615dbbf5c1a4262dd3c537ee7f` |
| 24 | `theorem` | [HasDerivWithinAt.comp_hasFDerivWithinAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-hasfderivwithinat-of-eq.md) | 196 | `result-track:d7221edd8e28a57ffb60c11f74478160cc235c1312870944e3d4619fe142c5eb` |
| 25 | `theorem` | [HasDerivWithinAt.comp_hasFDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-hasfderivat.md) | 202 | `result-track:51b93957834686ca2f4dee398a54d4da9f287dc2398410a46746b6aedc09cdfe` |
| 26 | `theorem` | [HasDerivWithinAt.comp_hasFDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-hasfderivat-of-eq.md) | 208 | `result-track:88110d4032e03529a6e5401fb6d5b5a01382c77c1517884653211b63193b8a45` |
| 27 | `theorem` | [HasDerivAtFilter.comp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivatfilter-comp.md) | 215 | `result-track:e6d57066a9bcf6c82e8729bb869bbebbd07f6edb45492b118d86abd768dafa6e` |
| 28 | `theorem` | [HasDerivAtFilter.comp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivatfilter-comp-of-eq.md) | 222 | `result-track:7654f9521c31f5006f210741d3aa42e2283222f29a48f4582729fb99d9d8d215` |
| 29 | `theorem` | [HasDerivWithinAt.comp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp.md) | 228 | `result-track:d7fed6e292d9d88e01b589080bf38cbe5da0038497fa08379a2f57c802a3fb20` |
| 30 | `theorem` | [HasDerivWithinAt.comp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-of-eq.md) | 234 | `result-track:c095c33eb62174a9d84d99226e2a5f106bcfc78bae2651383bdac971d6aa1d04` |
| 31 | `theorem` | [HasDerivAt.comp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp.md) | 243 | `result-track:4a890adc4f539a3f3a0f45aac5630faf82c9e11903d7e6554a38e01292f72d39` |
| 32 | `theorem` | [HasDerivAt.comp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-of-eq.md) | 251 | `result-track:21c6c7a54e4ea74534ac49c18cc3f13223038d448fdfd20f5f92adaefa73060e` |
| 33 | `theorem` | [HasStrictDerivAt.comp](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-comp.md) | 256 | `result-track:993d0171eadf01788616a304265ded706849fe38608e08a7b2c1d6be87ed256b` |
| 34 | `theorem` | [HasStrictDerivAt.comp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-comp-of-eq.md) | 261 | `result-track:b8eb67a9aa07f03753e624f448a1e1fc40f14d37b874af782a19bec497e08bc0` |
| 35 | `theorem` | [HasDerivAt.comp_hasDerivWithinAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-hasderivwithinat.md) | 266 | `result-track:91dc437932bad016f2cace6b209edaa8a90b170859cd8e55d9cd3254e54d1350` |
| 36 | `theorem` | [HasDerivAt.comp_hasDerivWithinAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-comp-hasderivwithinat-of-eq.md) | 270 | `result-track:c568cebaa0eac823f58302233bbb146041ba46678dcf8c53cb25b70d11dd6558` |
| 37 | `theorem` | [HasDerivWithinAt.comp_hasDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-hasderivat.md) | 275 | `result-track:b8bfd3d2250ca517127677c27d75c7e9f5e4469d17f40ae0f5f87ca13622417b` |
| 38 | `theorem` | [HasDerivWithinAt.comp_hasDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-comp-hasderivat-of-eq.md) | 280 | `result-track:8ef9b029613a0707b6ebf73e24b733ef1539917347d02d142cbc9f3300a96109` |
| 39 | `theorem` | [derivWithin_comp](../../../../RealFunctions/DerivCompPublic.lean/declarations/derivwithin-comp.md) | 285 | `result-track:e324b107a113ff93891ff8a35b3f67e149e327c4c009f681550d01e560de741b` |
| 40 | `theorem` | [derivWithin_comp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/derivwithin-comp-of-eq.md) | 292 | `result-track:969a46b6844a8f2b4d0ae03723559e64fe27c04e7b56464b2b3ecf927d571520` |
| 41 | `theorem` | [deriv_comp](../../../../RealFunctions/DerivCompPublic.lean/declarations/deriv-comp.md) | 298 | `result-track:f2608a1fda4c2f3cfa862fb2fb89a4ba54046d33ab8f4c62d3f3cfdd0d4e6575` |
| 42 | `theorem` | [deriv_comp_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/deriv-comp-of-eq.md) | 302 | `result-track:415bff86eff0de792625cb6f57730df66d7fc89381cbaabe9d6b912de9c21a30` |
| 43 | `theorem` | [HasDerivAtFilter.iterate](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivatfilter-iterate.md) | 307 | `result-track:1c03e838cd83e4db785646d1a4fc9169e10210a47566c0f813b5a113df98f553` |
| 44 | `theorem` | [HasDerivAt.iterate](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivat-iterate.md) | 313 | `result-track:8b68a492aaf535707d6bc68ce06a2bb4fcc7bc57654179d1b99da3c6cea28060` |
| 45 | `theorem` | [HasDerivWithinAt.iterate](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasderivwithinat-iterate.md) | 317 | `result-track:63b137c167576967d0df6434f54edf5889df5e1e9d6a8787102ab3d3d9910d9a` |
| 46 | `theorem` | [HasStrictDerivAt.iterate](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictderivat-iterate.md) | 322 | `result-track:a6b7da844d1b37e85d7b163fd598d90cdc76750d905eefed023eafacd4336dd4` |
| 47 | `theorem` | [HasFDerivWithinAt.comp_hasDerivWithinAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivwithinat-comp-hasderivwithinat.md) | 341 | `result-track:34cc35461d3e53e195855aa9ecd27490abdfd25ea1b5f9eee9469c517f7b11a0` |
| 48 | `theorem` | [HasFDerivWithinAt.comp_hasDerivWithinAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivwithinat-comp-hasderivwithinat-of-eq.md) | 348 | `result-track:e2e546ece06da080d4404556fa653c496f60ac131bf8b234c3b898c19a39d286` |
| 49 | `theorem` | [HasFDerivWithinAt.comp_hasDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivwithinat-comp-hasderivat.md) | 354 | `result-track:84a00d1bc799317379daabfc12156964e7423dee33d0ba10b4f2dd4ab807b0e6` |
| 50 | `theorem` | [HasFDerivWithinAt.comp_hasDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivwithinat-comp-hasderivat-of-eq.md) | 358 | `result-track:44db63bac22c6b23982f3b0ac69e7f602438a5261582c996b74cf202bd2d554c` |
| 51 | `theorem` | [HasFDerivAt.comp_hasDerivWithinAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivat-comp-hasderivwithinat.md) | 363 | `result-track:bf089c1fedc9c50b72d1c8db8b0d00f9986b50282acb8f8dfb86894d5bbc1087` |
| 52 | `theorem` | [HasFDerivAt.comp_hasDerivWithinAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivat-comp-hasderivwithinat-of-eq.md) | 367 | `result-track:b80ba5ff0b84d96cc01b743954f6032baf0757edcf2eb6dd91a4e6e83b1789c6` |
| 53 | `theorem` | [HasFDerivAt.comp_hasDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivat-comp-hasderivat.md) | 374 | `result-track:d6275044cf73ce83d3824a4def8ad493a344e4e1ba703164fcf42de32c600a66` |
| 54 | `theorem` | [HasFDerivAt.comp_hasDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasfderivat-comp-hasderivat-of-eq.md) | 380 | `result-track:e39d328bae722d5080c07f2f0fcb7cbdd8b932fa72fc866b1f1bafa1fd5a1042` |
| 55 | `theorem` | [HasStrictFDerivAt.comp_hasStrictDerivAt](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictfderivat-comp-hasstrictderivat.md) | 385 | `result-track:ecfb4e3c1f2047ac0f7428cc1b70829db1ae6b049668511dbdea59b2baa8ce92` |
| 56 | `theorem` | [HasStrictFDerivAt.comp_hasStrictDerivAt_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/hasstrictfderivat-comp-hasstrictderivat-of-eq.md) | 389 | `result-track:45b11d15774f1e23c891962212f27e05b89baef61384afd623fbfaf39e434449` |
| 57 | `theorem` | [fderivWithin_comp_derivWithin](../../../../RealFunctions/DerivCompPublic.lean/declarations/fderivwithin-comp-derivwithin.md) | 394 | `result-track:0a1bc19051b0ee859f0b30e2583053d217e083d8bd488085d7cb249a2252c4fc` |
| 58 | `theorem` | [fderivWithin_comp_derivWithin_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/fderivwithin-comp-derivwithin-of-eq.md) | 401 | `result-track:7231c612a7176dfcaef98ebc134c11fe02f57c5d5dde12ad97795e46d3d6896a` |
| 59 | `theorem` | [fderiv_comp_deriv](../../../../RealFunctions/DerivCompPublic.lean/declarations/fderiv-comp-deriv.md) | 406 | `result-track:a4d72824caa93f8d66ae6236d16ff70f072f8b040867e7c8473c2a8c8f39511c` |
| 60 | `theorem` | [fderiv_comp_deriv_of_eq](../../../../RealFunctions/DerivCompPublic.lean/declarations/fderiv-comp-deriv-of-eq.md) | 410 | `result-track:bbcba3a6968d7c50ee29c41861f84a9d91735359ef8160640371650be3f3a5a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c3f754c54dbf80727b418d23d6c12beb963672a95674150084121aff51ffb18c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4ed965b4b0a3a62724cade9cb1b89b00c2201195a575dc9ab2a2f32a42869bc3.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Comp/Variant4ed965b4b0a3a62724cade9cb1b89b00c2201195a575dc9ab2a2f32a42869bc3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
