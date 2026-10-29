# Verification target: Inner Product Space Calculus Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6e141a1adc85ad8c91812d80f7a60e8c733f0d8",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant4212e4a12ae65fa61a7422c686c095285dd7be88ed2fc81a690bd3a8008a0bb6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6e141a1adc85ad8c91812d80f7a60e8c733f0d8`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant4212e4a12ae65fa61a7422c686c095285dd7be88ed2fc81a690bd3a8008a0bb6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant4212e4a12ae65fa61a7422c686c095285dd7be88ed2fc81a690bd3a8008a0bb6.lean.json)

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
| 1 | `def` | [fderivInnerCLM](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/fderivinnerclm.md) | 56 | `declaration-track:78f3273c11d3d1d3796b7c874500377315491d234658830cde95f4a31bad0a6d` |
| 2 | `theorem` | [fderivInnerCLM_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/fderivinnerclm-apply.md) | 60 | `result-track:4d890b9c14bc69d3f1d062a65c1ef1af3dda0f8e0cdf85d7aecd42b604313635` |
| 3 | `theorem` | [contDiff_inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-inner-source-edition-2.md) | 65 | `result-track:af3faf64f67c2ba93a9d996fffb5ffcb2ed88723f83b423694980042bb5603c3` |
| 4 | `theorem` | [contDiffAt_inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-inner.md) | 68 | `result-track:023c7ba978627f82e9d4b37065dce6cc4221db3ff7ae79cd5b899f5df6b8b9e0` |
| 5 | `theorem` | [differentiable_inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiable-inner.md) | 71 | `result-track:575800fecf56aea49185711cf1b0e14cc892b1ff2c86c9bfc2572eb4485704a7` |
| 6 | `theorem` | [ContDiffWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffwithinat-inner.md) | 78 | `result-track:e94f0217c51634fcd6ae93cc40eaab35c508d2a32b3a5bf78e22b21f2fe68801` |
| 7 | `theorem` | [ContDiffAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-inner-source-edition-2.md) | 82 | `result-track:c1b8f7bdaa14f032b0f9b258def05bc74effb9c2ae41cb2266e25c0b11f8869b` |
| 8 | `theorem` | [ContDiffOn.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffon-inner.md) | 86 | `result-track:4d22277bc47332274c85cf9b215125fafa49eb9c2118771168ec9265ca9a5ba8` |
| 9 | `theorem` | [ContDiff.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-inner.md) | 89 | `result-track:5a53976e7cc7724e73910f17ef8b1774e0ba4ac2f8b5d3c95f99154b906773d7` |
| 10 | `theorem` | [HasFDerivWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasfderivwithinat-inner.md) | 93 | `result-track:7db698efca63df79d71b68f7d2f224abf377cae133732b8f335a86cd48b955e4` |
| 11 | `theorem` | [HasStrictFDerivAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasstrictfderivat-inner.md) | 101 | `result-track:23ef2aa6d2e0b6c11ded2d831c9fb272d2c48ac477496abee42e80aa11d54266` |
| 12 | `theorem` | [HasFDerivAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasfderivat-inner.md) | 106 | `result-track:4ef8ffea92c28542eb1d53a8a4114c7d0ff4891be1b3647e94b83a3dc64fa2cc` |
| 13 | `theorem` | [HasDerivWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasderivwithinat-inner.md) | 112 | `result-track:7df0915fe15c5957ec4d08e8d73e8284adef39bd56f3fb7d1d3fb2fe2dbf5f41` |
| 14 | `theorem` | [HasDerivAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasderivat-inner.md) | 117 | `result-track:33050358b8224dffc0b50a5752ed69659b107007bd855c82ab2c796f6e928c7a` |
| 15 | `theorem` | [DifferentiableWithinAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiablewithinat-inner.md) | 122 | `result-track:6f26e541e80bcf38abce62457444024ada4d7e2906d685e881e69e54fd238bb3` |
| 16 | `theorem` | [DifferentiableAt.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableat-inner.md) | 126 | `result-track:abee6d690616dbaea65db5c1ecb07971ebbc8744258fa21f49e1fc6426e47810` |
| 17 | `theorem` | [DifferentiableOn.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableon-inner.md) | 130 | `result-track:ca8719f6e37d34a8c81844d64a59cbe6eab9f29c1beb8ab78582df54a35793f3` |
| 18 | `theorem` | [Differentiable.inner](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiable-inner-source-edition-2.md) | 133 | `result-track:e9850ad1f67c717860449bb6b4d59af3eed4322a1c3ee40b46806c9a7153d424` |
| 19 | `theorem` | [fderiv_inner_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/fderiv-inner-apply.md) | 136 | `result-track:c39bb302d32886878445a463f01d768799bc5b167088cf1379bac61529323d0c` |
| 20 | `theorem` | [deriv_inner_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/deriv-inner-apply.md) | 140 | `result-track:b1e3fa9e4cd0be1eee6ec3a245011c33d378dd4767768d28058f22497c8f9c59` |
| 21 | `theorem` | [contDiff_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-norm-sq.md) | 148 | `result-track:8670c99bcf73da2501274bd4665d19b5e2053ef3c7c987b8b3a218d6b009f2a3` |
| 22 | `theorem` | [ContDiff.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-norm-sq-source-edition-2.md) | 152 | `result-track:de758f4ee5ca34e5582fe7d6a420e6452d7337e723db3c29c6bcc2fc689f3149` |
| 23 | `theorem` | [ContDiffWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffwithinat-norm-sq.md) | 155 | `result-track:e6c199095d8c9c0588c9c4e527c5759339ca271d5586985904f088316f579067` |
| 24 | `theorem` | [ContDiffAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-norm-sq.md) | 159 | `result-track:f267a04ab312b77892813dc5d489b695d9608c5fde5328477cc9c4635c658fe0` |
| 25 | `theorem` | [contDiffAt_norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-norm.md) | 162 | `result-track:0f4e1db59096b0734acae1073a84da590ff8d69d33029f66ce3c0889006c9fe8` |
| 26 | `theorem` | [ContDiffAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-norm-source-edition-2.md) | 166 | `result-track:6618d4113e3600e5f3b7670916c93348c2bf925ae85d468076f6d34bd2ea782e` |
| 27 | `theorem` | [ContDiffAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-dist.md) | 170 | `result-track:3104b1302e850a6a3fa702040bdafe9e53ae81615f6a5538bda7b93a09550e97` |
| 28 | `theorem` | [ContDiffWithinAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffwithinat-norm.md) | 175 | `result-track:16614ece6ab792f82d9b25be83248c0356a691100ba68ad214604d1d3c130188` |
| 29 | `theorem` | [ContDiffWithinAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffwithinat-dist.md) | 179 | `result-track:123b4265559ded65c05adea470035a2fe2dd9dcb28c837e640e2c6ddb1873caf` |
| 30 | `theorem` | [ContDiffOn.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffon-norm-sq.md) | 183 | `result-track:fa6f7cdbc64ed37c4ff383d2ff736638dbc39944d158583a04685fc7c1fe2660` |
| 31 | `theorem` | [ContDiffOn.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffon-norm.md) | 186 | `result-track:7fb38d1badfbefb18f3e8441f09ac20c5f9cbbf16c885df54069f78d5c264012` |
| 32 | `theorem` | [ContDiffOn.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffon-dist.md) | 189 | `result-track:54bbc9087422cd81e8dd6a2776b8d6960f4767b3f0d444a9fb8562dd228c5abe` |
| 33 | `theorem` | [ContDiff.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-norm.md) | 193 | `result-track:229ade105be3dad8c7411b261160aa0532ada9f83b1ee0f144b749f613188150` |
| 34 | `theorem` | [ContDiff.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-dist.md) | 196 | `result-track:118ed0cf43c8fad69e5871699a7903ee2bcf858f97276abf3445d54cc212ab07` |
| 35 | `theorem` | [hasStrictFDerivAt_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasstrictfderivat-norm-sq.md) | 205 | `result-track:c258b55241f7c25f03fd65a004ef6a1975284c3f2f7531786341e9e29dac1a7c` |
| 36 | `theorem` | [fderiv_norm_sq_apply](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/fderiv-norm-sq-apply.md) | 213 | `result-track:7e01e743a9677b39324fb8dd53ab7aeff9f7dc3237f88d6ac34514504c645a1f` |
| 37 | `theorem` | [fderiv_norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/fderiv-norm-sq.md) | 216 | `result-track:dc16aee2acdaade553595698d4bfe7e5a4c7708f608495d94eb4cfc0f28fe716` |
| 38 | `theorem` | [HasFDerivAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasfderivat-norm-sq.md) | 219 | `result-track:604e1a9837c85b9feafeea19cddc36e3218cfbb59e0361e7b0a4d1c3ccbed093` |
| 39 | `theorem` | [HasDerivAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasderivat-norm-sq.md) | 223 | `result-track:670586e5f977149d3ad9ac9c4a44a20a086b3d75a558ee76ed40bbe87a317cc9` |
| 40 | `theorem` | [HasFDerivWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasfderivwithinat-norm-sq.md) | 227 | `result-track:b5e9a168c3a971dac5c9dd0327400f0543e866129cad6754e8b25f24e0363b6e` |
| 41 | `theorem` | [HasDerivWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasderivwithinat-norm-sq.md) | 231 | `result-track:a78924eba86efe12d0573698fc6bca3cb65b24f89ce3d044dfb083e5b9bb8487` |
| 42 | `theorem` | [DifferentiableAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableat-norm-sq.md) | 241 | `result-track:e3296eb0ddb3b59b723ddd786d558d450d176ea34df40094598b6d452ac3258e` |
| 43 | `theorem` | [DifferentiableAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableat-norm.md) | 245 | `result-track:3f102d13632d75b02d8a92ea2fed3365be5afe12e9e722e386f58ce98e2720af` |
| 44 | `theorem` | [DifferentiableAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableat-dist.md) | 249 | `result-track:3efa02ae01e563e1220cdb2e26fdd727a9c0e674f38e277eddb6b41c6f52341e` |
| 45 | `theorem` | [Differentiable.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiable-norm-sq.md) | 253 | `result-track:15db9b9ef192f366b97f5b182d6988f5b2a1942b3490cc267f7853f639c7539e` |
| 46 | `theorem` | [Differentiable.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiable-norm.md) | 256 | `result-track:3afd21c35e5f9047eaaa3d6c4e15386bbf9a042063b2328c5c36cbf32ea83126` |
| 47 | `theorem` | [Differentiable.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiable-dist.md) | 259 | `result-track:cfc5f6ea31b0ae45ad0cfcfdfe4627ab9dcc75ec004762de3465d05ef93f7c10` |
| 48 | `theorem` | [DifferentiableWithinAt.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiablewithinat-norm-sq.md) | 263 | `result-track:4724ac138123e1df1bda0d1bfe642d046c2e9eb0d83d79625db5fd53a2141f3e` |
| 49 | `theorem` | [DifferentiableWithinAt.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiablewithinat-norm.md) | 267 | `result-track:4b1c608da4109049ae03d558b463dca823163641a94db7ae7120d3e854ee7cff` |
| 50 | `theorem` | [DifferentiableWithinAt.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiablewithinat-dist.md) | 271 | `result-track:b5d27b68239cdec6037a5f0e7fb653f53830cb6b97c8233cc4c9f90762295b2e` |
| 51 | `theorem` | [DifferentiableOn.norm_sq](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableon-norm-sq.md) | 277 | `result-track:328565c549cd4a03ade705fd8fe7d80b938faedab40c1619e5af64d43c4571b7` |
| 52 | `theorem` | [DifferentiableOn.norm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableon-norm.md) | 280 | `result-track:6d8a9844b02023afdb4a72d78424e4206ffe25a0b7fb7d108c0d64ef21202ed4` |
| 53 | `theorem` | [DifferentiableOn.dist](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableon-dist.md) | 283 | `result-track:3e042b7c354b42412097c73e995a96d96a4608a1c354548c14574a494ee0e113` |
| 54 | `theorem` | [differentiableWithinAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiablewithinat-euclidean.md) | 304 | `result-track:864173514b726328736c44e4166c0b7c57b0943913104a17e67ee7554f91b013` |
| 55 | `theorem` | [differentiableAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableat-euclidean.md) | 308 | `result-track:4676dbe21eb0b99379ab69f87319b5242439d971f85e77ac16ace7366864e157` |
| 56 | `theorem` | [differentiableOn_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiableon-euclidean.md) | 312 | `result-track:539e01882a7624e14fe592280e0f4c074f9f2040156caa3e7d81993db9863639` |
| 57 | `theorem` | [differentiable_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/differentiable-euclidean.md) | 316 | `result-track:96d3c6a7e1a756f3f9d8c71ca01689ccaa277b9668f08c0685d6e7747a35c3c8` |
| 58 | `theorem` | [hasStrictFDerivAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasstrictfderivat-euclidean.md) | 319 | `result-track:2f7ced63313cc60cfdb3dd8bdab958a8b6e634ae8f0ac2edfd0dc1a00811ac8a` |
| 59 | `theorem` | [hasFDerivWithinAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/hasfderivwithinat-euclidean.md) | 324 | `result-track:3ee54f5766b6de5f1b7d341e6a9d51f8dae2bf5e7e2033035f0bc26945f69b92` |
| 60 | `theorem` | [contDiffWithinAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffwithinat-euclidean.md) | 335 | `result-track:f6332a0c034c38519e882937cd1ad0f84e4b6f459f94b66b0599d91928f77714` |
| 61 | `theorem` | [contDiffAt_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffat-euclidean.md) | 339 | `result-track:70ad942133e0b42f2a81683366c6a55bc509243db34f4384efec17c52356c97e` |
| 62 | `theorem` | [contDiffOn_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffon-euclidean.md) | 343 | `result-track:22b13b2decac1d04fe6165c742ce256e0f79c3566c97d788905e96ff2ab12c5b` |
| 63 | `theorem` | [contDiff_euclidean](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-euclidean.md) | 347 | `result-track:36c977e5797f37d9979a22216ec4c935d7a699617a8cce1de35ba3e7ecd70cad` |
| 64 | `theorem` | [OpenPartialHomeomorph.contDiff_univUnitBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/openpartialhomeomorph-contdiff-univunitball.md) | 360 | `result-track:78e9edf4995bd972d671f0b970c8db25d6bb1205f6a280539d0d8dfbb1c5efa1` |
| 65 | `theorem` | [OpenPartialHomeomorph.contDiffOn_univUnitBall_symm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/openpartialhomeomorph-contdiffon-univunitball-symm.md) | 366 | `result-track:4b19ef0a2aa6052aec6550c752e0a18c27646035bdf6c4b36ce6c72f0225cf04` |
| 66 | `theorem` | [Homeomorph.contDiff_unitBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/homeomorph-contdiff-unitball.md) | 377 | `result-track:efe5d4333d05423cd5e29770b369dbcfdebefb99b4f36f2dc7e44adbd4d8fddd` |
| 67 | `theorem` | [contDiff_unitBallBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-unitballball.md) | 384 | `result-track:f566df9beb14c99d555ce984bcd8a62f82ac9ece2d27558e0113df994f62ea52` |
| 68 | `theorem` | [contDiff_unitBallBall_symm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-unitballball-symm.md) | 387 | `result-track:0a09588ddfb912bef9f1d424d6a995c3ddf2a25582086ead927ba3a9f2746583` |
| 69 | `theorem` | [contDiff_univBall](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiff-univball.md) | 390 | `result-track:c62b72cf3e06cffa46d306ffa09a9c2a268316eb613e243c66672246f690ea0c` |
| 70 | `theorem` | [contDiffOn_univBall_symm](../../../../FunctionalAnalysis/InnerProductSpaceCalculusNamespacedPublic.lean/declarations/contdiffon-univball-symm.md) | 395 | `result-track:5d7a28b7275000fac6f90be70cffebdb933e3e61dc3d71f490544559a118dfbe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f3c80e57e8531aabe5c5835d9a5181b51130f9afb40a3412f1668aa1b740aab4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant4212e4a12ae65fa61a7422c686c095285dd7be88ed2fc81a690bd3a8008a0bb6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Calculus/Variant4212e4a12ae65fa61a7422c686c095285dd7be88ed2fc81a690bd3a8008a0bb6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
