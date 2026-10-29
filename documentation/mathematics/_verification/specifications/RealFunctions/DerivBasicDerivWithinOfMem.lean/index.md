# Verification target: Deriv Basic Deriv Within Of Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a88241a3283dcd7a1d2faf36d36d249595c83161",
  "lexical_observation_count": 109,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/index.md) · [Full source](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a88241a3283dcd7a1d2faf36d36d249595c83161`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter.md) | 103 | `declaration-track:857ecaa2f2713c3c39da064e06715afc4f88dd3713e7d85d547c3e36eb68c9ac` |
| 2 | `def` | [HasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat.md) | 111 | `declaration-track:0dac4b17cc6b0768d415881652efb96b2583fc7b49da3a6ba23a38433fe6308f` |
| 3 | `def` | [HasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat.md) | 119 | `declaration-track:95a24d963aa4c5c6178c1494c42756b3288a00727664358a75bd0aa74446e5dc` |
| 4 | `def` | [HasStrictDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictderivat.md) | 126 | `declaration-track:34096ee30bd0645c43750735f150939a6eff0361c3bc67e10457abe3bd12a57e` |
| 5 | `def` | [derivWithin](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin.md) | 135 | `declaration-track:b26667eaf104d4170be06f7d71982569750eeb32823058693f0f0663226fc8f1` |
| 6 | `def` | [deriv](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv.md) | 144 | `declaration-track:a0c8596f9dfa1c0255bc598d969fbf955de9067bc69dee777cb1d85f82c4365c` |
| 7 | `theorem` | [hasFDerivAtFilter_iff_hasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasfderivatfilter-iff-hasderivatfilter.md) | 159 | `result-track:6f28bb220f0fb7ee49b69fff3a3944cb916a89b61f935db791a061ea23f17cd8` |
| 8 | `theorem` | [HasFDerivAtFilter.hasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasfderivatfilter-hasderivatfilter.md) | 163 | `result-track:eb5bd39ae6a4bf7b1236a1cd20f2e232ab35ca05b54b7d8a0539c1245e097187` |
| 9 | `theorem` | [hasFDerivWithinAt_iff_hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasfderivwithinat-iff-hasderivwithinat.md) | 169 | `result-track:b6a11d48c6ea5a0b9f7947c5487482ec60fa4f76aa5f01bb10dd3816e844428b` |
| 10 | `theorem` | [hasDerivWithinAt_iff_hasFDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-iff-hasfderivwithinat.md) | 175 | `result-track:8cefec81ab8e5f576955c29ace3c6469dba85433de7962f373ee3fd50246dd1c` |
| 11 | `theorem` | [HasFDerivWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasfderivwithinat-hasderivwithinat.md) | 180 | `result-track:79ddab1d5d9678d3195c10fa35a4609c9feb695e6dfc989ccb20ebb405ced26a` |
| 12 | `theorem` | [HasDerivWithinAt.hasFDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-hasfderivwithinat.md) | 185 | `result-track:83970fb51c96587b8b19b61f4dbd0f8432902a43b11bfbd960a11d2da849054b` |
| 13 | `theorem` | [hasFDerivAt_iff_hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasfderivat-iff-hasderivat.md) | 191 | `result-track:7121916a5fa25d5ee750819b3cecac27e7a8e1d785371d60d2bcf2d2151cbd07` |
| 14 | `theorem` | [HasFDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasfderivat-hasderivat.md) | 195 | `result-track:e3255d37ae42b5e0cd22a2656f5b3f5772784a68872cde96a4516dd1deb9311f` |
| 15 | `theorem` | [hasStrictFDerivAt_iff_hasStrictDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictfderivat-iff-hasstrictderivat.md) | 199 | `result-track:2e95e170b398b708485312757dacfb943faed2ded6a3f3c01ae39665f39a87ca` |
| 16 | `theorem` | [HasStrictFDerivAt.hasStrictDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictfderivat-hasstrictderivat.md) | 204 | `result-track:fbd65ae35bb2ab1a9125cfe551e8e6e264e899da339e789756eb4aecfd0042bd` |
| 17 | `theorem` | [hasStrictDerivAt_iff_hasStrictFDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictderivat-iff-hasstrictfderivat.md) | 209 | `result-track:2f20cfc8549b953e180d7f737ac22c4d5f2ab1864ea45cc6ca3ef720ee68038c` |
| 18 | `theorem` | [hasDerivAt_iff_hasFDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-iff-hasfderivat.md) | 218 | `result-track:1d7bb8e7edd8b5d77ea767a445b8bdb8ed4bc26d8fd224a0fe1527c2ca5343cc` |
| 19 | `theorem` | [derivWithin_zero_of_not_differentiableWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-zero-of-not-differentiablewithinat.md) | 226 | `result-track:f73b852e250d73790c2001d0fbf126a8fc8b3c70eafdc627d9bc1d8d0d3de34c` |
| 20 | `theorem` | [differentiableWithinAt_of_derivWithin_ne_zero](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiablewithinat-of-derivwithin-ne-zero.md) | 233 | `result-track:bddb778cb13e57a6dd70e5f3ae94b7e0ffe23e1637fda3fe5237b4c6f0b84b91` |
| 21 | `theorem` | [deriv_zero_of_not_differentiableAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-zero-of-not-differentiableat.md) | 238 | `result-track:3d093bdb8a86a189962f31539598ccc843fc8ca8c9217b2bc9bb518566fd38cc` |
| 22 | `theorem` | [differentiableAt_of_deriv_ne_zero](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiableat-of-deriv-ne-zero.md) | 244 | `result-track:08cdbd5c438a524b1718b079e8c3042ecc01dccf94e43bea937ccfdf79220de3` |
| 23 | `theorem` | [UniqueDiffWithinAt.eq_deriv](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/uniquediffwithinat-eq-deriv.md) | 248 | `result-track:4e8ea25dd8c3576fe7c42c6ffeb95093662b674e2b97069961d708967024e73f` |
| 24 | `theorem` | [hasDerivAtFilter_iff_isLittleO](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-iff-islittleo.md) | 253 | `result-track:e54c88ba9402fe3fa2b216b7abd1b07b91dff8a1730b903e4629418486bb44a6` |
| 25 | `theorem` | [hasDerivAtFilter_iff_tendsto](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-iff-tendsto.md) | 258 | `result-track:fd3ae5d86b99888c9b84b8c472d67e9893b57c63740d0c4fb618fea09a17ad5c` |
| 26 | `theorem` | [hasDerivWithinAt_iff_isLittleO](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-iff-islittleo.md) | 264 | `result-track:abe993b079d5544dae95f34e9cdb2a74a0e3875c7d518a251ca699c733cf0564` |
| 27 | `theorem` | [hasDerivWithinAt_iff_tendsto](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-iff-tendsto.md) | 270 | `result-track:404b6620b06eef9b48b5c59d6128748e38b30d325777388eb2bc4339a0b74d3a` |
| 28 | `theorem` | [hasDerivAt_iff_isLittleO](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-iff-islittleo.md) | 276 | `result-track:d3c9922708a057675eb715d666cb97103e36adf84e39376bcbb722f0bb198572` |
| 29 | `theorem` | [hasDerivAt_iff_tendsto](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-iff-tendsto.md) | 281 | `result-track:cd5ea7b9d1a51564c18cd6ba9b4adb8d53b55360fed8e4bd788477c7f7a2e508` |
| 30 | `theorem` | [HasDerivAtFilter.isBigO_sub](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-isbigo-sub.md) | 286 | `result-track:192f893277719540b1d3cc82e3331369a5618f02405325d33969e5b7bbf205e6` |
| 31 | `theorem` | [HasDerivAtFilter.isBigO_sub_rev](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-isbigo-sub-rev.md) | 292 | `result-track:62a62065f00b4e93cc61db26275d48aa443abb00a7ea53f0a83c1d7ab7c313e8` |
| 32 | `theorem` | [HasStrictDerivAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictderivat-hasderivat.md) | 300 | `result-track:124029823449039df3b4f76bea14478d972ab4101d8f659d36484743ef07e199` |
| 33 | `theorem` | [hasDerivWithinAt_congr_set'](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-set-source-edition-2.md) | 304 | `result-track:edcbbd16c195f97b70965f36fe041fe2d80d3ac2db7912cf2e29283f5c1257f0` |
| 34 | `theorem` | [hasDerivWithinAt_congr_set](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-set.md) | 309 | `result-track:44e91381eae45818be16cad3a3365fc9cbed5fe20532d04a93900456db55529f` |
| 35 | `theorem` | [hasDerivWithinAt_diff_singleton](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-diff-singleton.md) | 318 | `result-track:a9e96b18fd31c83bf79708e44b4815a735ad59ea8c1cb5ce7cd2713f9460443b` |
| 36 | `theorem` | [hasDerivWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-ioi-iff-ici.md) | 324 | `result-track:6c0571d9b8800cc0845415dc9a3b792b75c481b81b009bdad09f5f914f3002a7` |
| 37 | `theorem` | [hasDerivWithinAt_Iio_iff_Iic](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-iio-iff-iic.md) | 334 | `result-track:d54a64cde3739398f30bf83573eb28d55351b87dc03e02281f89887f6fec0d8e` |
| 38 | `theorem` | [HasDerivWithinAt.Ioi_iff_Ioo](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-ioi-iff-ioo.md) | 343 | `result-track:1e55ddb108250b3271b0765c16bd19b407746fc9c729915a6b9498b479a046cf` |
| 39 | `theorem` | [hasDerivAt_iff_isLittleO_nhds_zero](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-iff-islittleo-nhds-zero.md) | 352 | `result-track:c003b66ab8aa13f94ce5129a1f311729b7791cec679f9b36dd675f2aeb6e941b` |
| 40 | `theorem` | [HasDerivAtFilter.mono](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-mono.md) | 357 | `result-track:d8cbf92412a0366f35bdb515b095b9ed8c97f73625231d7971a2852c149da2d4` |
| 41 | `theorem` | [HasDerivWithinAt.mono](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-mono.md) | 362 | `result-track:4969b8d41d371e5be1b0d33876ae800d0a2b2900d71c397ee1260a22aa146eac` |
| 42 | `theorem` | [HasDerivWithinAt.mono_of_mem](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-mono-of-mem.md) | 367 | `result-track:daf31cb22a62ec7ab14d8666a26c5dfa38f27dc9848d0b143ad0c84d3322b8cb` |
| 43 | `theorem` | [HasDerivAt.hasDerivAtFilter](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-hasderivatfilter.md) | 373 | `result-track:a42336d93a42c70b9c64c2fcfa7a1c921d3ec4cf9ea828b016d2393133989bcf` |
| 44 | `theorem` | [HasDerivAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-hasderivwithinat.md) | 378 | `result-track:407f576f51616c7ea2c331c09786de3e509d0035de82d7709216a2b50d3a5bdf` |
| 45 | `theorem` | [HasDerivWithinAt.differentiableWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-differentiablewithinat.md) | 382 | `result-track:2b48ce6da8d3845fa42bfb4ecf9ee1041ae8becf57a517decc6e2ea6eea7747a` |
| 46 | `theorem` | [HasDerivAt.differentiableAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-differentiableat.md) | 387 | `result-track:8db2b367c39e8bd598e936e5f1d049e9d60278a83077982840066e34604de3bf` |
| 47 | `theorem` | [hasDerivWithinAt_univ](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-univ.md) | 392 | `result-track:691c05e14eb21f0e49593db17202bb73c2189b41ae86573023f4080175fbaa98` |
| 48 | `theorem` | [HasDerivAt.unique](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-unique.md) | 396 | `result-track:6f4638c01c039e3eb7f2b4b41f80e7b4d3dac92b7c35faca25ca3f7f8189b71e` |
| 49 | `theorem` | [hasDerivWithinAt_inter'](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-inter.md) | 400 | `result-track:06d982cb08c0cc90531386d3b4f643f91816eabd660efaa8686e0d56bb50477e` |
| 50 | `theorem` | [hasDerivWithinAt_inter](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-inter-source-edition-2.md) | 405 | `result-track:2c32b9b559cadb675a283c9efb2a6b7e53fb5abfd6a42ac4a344a4821a382636` |
| 51 | `theorem` | [HasDerivWithinAt.union](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-union.md) | 410 | `result-track:05009fdf08a345218e68ab6cc5e447192377b73f28ad73e94047144b179712c2` |
| 52 | `theorem` | [HasDerivWithinAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-hasderivat.md) | 415 | `result-track:eec22a4c7700f7771ba277f6df8039597087356b31b88038ac3c0b6e4a65b183` |
| 53 | `theorem` | [DifferentiableWithinAt.hasDerivWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiablewithinat-hasderivwithinat.md) | 420 | `result-track:0f36da92df7dfac5ac9d0e4c20dcc09ac7b18bb2cce673620d38b4bd6afcd5b6` |
| 54 | `theorem` | [DifferentiableAt.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiableat-hasderivat.md) | 425 | `result-track:c33dabba0fbb9c3f59817e3cf37dc17514e339ed2db45760b85294eaccba148a` |
| 55 | `theorem` | [hasDerivAt_deriv_iff](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-deriv-iff.md) | 430 | `result-track:2fbc1fe316340dca6839094f5de931887c4ec30478fa2d9b270706632a25a9e3` |
| 56 | `theorem` | [hasDerivWithinAt_derivWithin_iff](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-derivwithin-iff.md) | 435 | `result-track:54998650c736f4b1929e04f60eca10642799236fc68bef778a61f0c140628abb` |
| 57 | `theorem` | [DifferentiableOn.hasDerivAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiableon-hasderivat.md) | 440 | `result-track:2114bb10df113d9c7181e4e6e510e7f7db31eb6afd711395707824e5a8dfad0b` |
| 58 | `theorem` | [HasDerivAt.deriv](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-deriv.md) | 445 | `result-track:763e550046a440a0f90ed58704bba5c576fd6b88c63df87accd738baf4ad6879` |
| 59 | `theorem` | [deriv_eq](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-eq.md) | 449 | `result-track:fae05362aa22169cb59140253c62b573e63d4e5cfb45f14bb929e3be70d394c3` |
| 60 | `theorem` | [HasDerivWithinAt.derivWithin](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-derivwithin.md) | 453 | `result-track:aa3f8130788637e63abbbda4a247ef9729cc91ffe677759e83c9ae2f20ba8586` |
| 61 | `theorem` | [fderivWithin_derivWithin](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/fderivwithin-derivwithin.md) | 458 | `result-track:9272c9980c069ce1cbae2f177dc0831b70c737f6d0c28d5968fd919a31eae2f6` |
| 62 | `theorem` | [derivWithin_fderivWithin](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-fderivwithin.md) | 462 | `result-track:9dff4cd7128ca45bf7b55b85372b8b14f04f0ff18685ed24d4304c0e6efaddbf` |
| 63 | `theorem` | [fderiv_deriv](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/fderiv-deriv.md) | 466 | `result-track:f92468cde4d580ee69b16e52a6195ec8d8e638bf35dca10ea50196cdc59492e3` |
| 64 | `theorem` | [deriv_fderiv](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-fderiv.md) | 470 | `result-track:95ad29384c9d51483c5d53b9bf5e72f9d980e3934393eb1dffc256bdb5fe88b1` |
| 65 | `theorem` | [DifferentiableAt.derivWithin](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiableat-derivwithin.md) | 473 | `result-track:f39fb36f4cf61e075117afdff6281a43254367187b32f71ed4514fad57ca1f17` |
| 66 | `theorem` | [HasDerivWithinAt.deriv_eq_zero](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-deriv-eq-zero.md) | 479 | `result-track:60de16c29e9a4a98063cd66d0e9fcc7ecef1ca45342f926180c58014aba5f3b6` |
| 67 | `theorem` | [derivWithin_of_mem](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-of-mem.md) | 485 | `result-track:156a723dda26a864f8d03579a1505a69bbd2d42867a66a91440cc2b79981c552` |
| 68 | `theorem` | [derivWithin_subset](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-subset.md) | 490 | `result-track:fde302966f4a6f55e60bc81a280bc565b60207a7502ab834a7442d4350390483` |
| 69 | `theorem` | [derivWithin_congr_set'](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-congr-set-source-edition-2.md) | 495 | `result-track:c56b41d544459f1a343571b90832e459a8c094b422519c0c80e758dd5e6a22a3` |
| 70 | `theorem` | [derivWithin_congr_set](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-congr-set.md) | 499 | `result-track:5730975e15c1263b26c0763ddb5abdbdfc3703344d7b8561a485126214487141` |
| 71 | `theorem` | [derivWithin_univ](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-univ.md) | 504 | `result-track:3cd809b9f8b008b5467e4b52ab5e01dae99153c66f148aa9833b4db05fed49dd` |
| 72 | `theorem` | [derivWithin_inter](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-inter.md) | 510 | `result-track:3e4f07a2d599191cae345950623d77a00ccc7f47cd17ad2c97461ad14dd8639d` |
| 73 | `theorem` | [derivWithin_of_open](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-of-open.md) | 515 | `result-track:93353b76931a2a733e067bf1268140e7e4198b5a16d02fb03ade782942f0cffb` |
| 74 | `theorem` | [deriv_mem_iff](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-mem-iff.md) | 521 | `result-track:02a092ca559d4b209a3fa30d7c08748a871d73beedc81f1d0ebf113a6b032a43` |
| 75 | `theorem` | [derivWithin_mem_iff](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-mem-iff.md) | 527 | `result-track:d56980e9068d8f879286bd9f1a6bdc9763482da55f8a8df8a76f027a8f6213db` |
| 76 | `theorem` | [differentiableWithinAt_Ioi_iff_Ici](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/differentiablewithinat-ioi-iff-ici.md) | 535 | `result-track:9b321819f9be1e5c7a390c33b9ce17e66b47ee006a263cee6a2987eac154d15c` |
| 77 | `theorem` | [derivWithin_Ioi_eq_Ici](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-ioi-eq-ici.md) | 542 | `result-track:7a1228779d0a4c05a77047d3412119b3cf19f12a7daeda257897d73ad0b2115e` |
| 78 | `theorem` | [Filter.EventuallyEq.hasDerivAtFilter_iff](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/filter-eventuallyeq-hasderivatfilter-iff.md) | 557 | `result-track:b9698586ca66be0928c00fa34c7918c16e131caabe561aa1d3a20e18cd2d6bf7` |
| 79 | `theorem` | [HasDerivAtFilter.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-congr-of-eventuallyeq.md) | 562 | `result-track:86a1d1be6e7d5a0f9c21ec8c11ca2a55d91dc89f81c14e7184b06a3ebe076a52` |
| 80 | `theorem` | [HasDerivWithinAt.congr_mono](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-mono.md) | 566 | `result-track:a77d9b3e887aa909b97ccfe4d16b1d9e7eb9b201a6427212f231325311c02d5c` |
| 81 | `theorem` | [HasDerivWithinAt.congr](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr.md) | 571 | `result-track:153dc77767d5da243060cea496d6761880f5a2c24e913388bb4048d6ccb08455` |
| 82 | `theorem` | [HasDerivWithinAt.congr_of_mem](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-of-mem.md) | 576 | `result-track:c684694be55d85589a34cc19186861db38c6a2cc8c58f560bbb744ad671619b2` |
| 83 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-of-eventuallyeq.md) | 581 | `result-track:962591d788cc99a80a52eddfce3f86ee62fbe97c593232f23be3574ba49c813f` |
| 84 | `theorem` | [HasDerivWithinAt.congr_of_eventuallyEq_of_mem](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-congr-of-eventuallyeq-of-mem.md) | 586 | `result-track:4dc620945d945e7c46089c52e27d21450f453e5b6d96a90ed733ea24b5b2b89a` |
| 85 | `theorem` | [HasDerivAt.congr_of_eventuallyEq](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-congr-of-eventuallyeq.md) | 591 | `result-track:bc2183880a0b9fcce23e872eb377e8f0e1efefdfaf94438e0b1d46dc21f44382` |
| 86 | `theorem` | [Filter.EventuallyEq.derivWithin_eq](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/filter-eventuallyeq-derivwithin-eq.md) | 596 | `result-track:072f1c5e02765a599ffaf636765b24ea6e993595a955ae043707b1714cf96af4` |
| 87 | `theorem` | [derivWithin_congr](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-congr.md) | 602 | `result-track:784c86ae482705fcfdb549daeba7ee9028ad442dd7028c22cb994c65611c9805` |
| 88 | `theorem` | [Filter.EventuallyEq.deriv_eq](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/filter-eventuallyeq-deriv-eq.md) | 608 | `result-track:639b4cfe074cf5a0ef915cb8ddd9eee1a13bfa2f442609a0bb702baf251419a0` |
| 89 | `theorem` | [Filter.EventuallyEq.deriv](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/filter-eventuallyeq-deriv.md) | 613 | `result-track:980856fc061c321d7bac06fcc8698bfa5f56c69476b20efd71db9f1b023c58b4` |
| 90 | `theorem` | [hasDerivAtFilter_id](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-id.md) | 625 | `result-track:f5f3736f7a5365928a30c4d93c6e4f0405615d06034f2b64c71f307a083c1093` |
| 91 | `theorem` | [hasDerivWithinAt_id](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-id.md) | 629 | `result-track:396cb4540de7d9caec75cebe23f4d6d6250541834f231b55e4e0ab188db01ce2` |
| 92 | `theorem` | [hasDerivAt_id](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-id.md) | 633 | `result-track:4e8e1a9541ee56342b38b7bb2874cb364eac083ec3e7734a1c6a6b8d424b5cff` |
| 93 | `theorem` | [hasDerivAt_id'](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-id-source-edition-2.md) | 637 | `result-track:e79b38e5518fcf6818748d6d2d79e0593e25fff3755b8d271231c5b0179b1f3c` |
| 94 | `theorem` | [hasStrictDerivAt_id](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictderivat-id.md) | 641 | `result-track:daf1e6454d2808e2e993f7d8bf719d45e006d5d6cc7385c9de6fbdba12b1e1dc` |
| 95 | `theorem` | [deriv_id](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-id-source-edition-3.md) | 645 | `result-track:a993f062e37c1b85d8d3ac69beaa71962165d68ee418ae5502db12f7a34c0d4b` |
| 96 | `theorem` | [deriv_id'](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-id.md) | 650 | `result-track:097fb75cf188f489c3154f0dc2c4dedfb58d8d21a0dd1239d21f69b8b5e2a38e` |
| 97 | `theorem` | [deriv_id''](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-id-source-edition-2.md) | 655 | `result-track:6d40159620328ced3b3f6d5556f8934ea67ec3b4c2782bad87b6e10317214d91` |
| 98 | `theorem` | [derivWithin_id](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-id.md) | 659 | `result-track:f2b919314f987c55eb5bb28538598b206390995bd871fa787050f042a0184af9` |
| 99 | `theorem` | [hasDerivAtFilter_const](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-const.md) | 671 | `result-track:2751edcac0173afcfb80545571b07b5197e16b793a412a40499704af52be073e` |
| 100 | `theorem` | [hasStrictDerivAt_const](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasstrictderivat-const.md) | 675 | `result-track:676fbde75c7aa03221f260718f3c8b64ca15446e0bbe38f2f246d11f8214499a` |
| 101 | `theorem` | [hasDerivWithinAt_const](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-const.md) | 679 | `result-track:ca6e36cfaa611e1cc77f2d6d3af7484293cdd32eaaedee4e42a4130574d912bf` |
| 102 | `theorem` | [hasDerivAt_const](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-const.md) | 683 | `result-track:10cf519ff4bf81e08aabba7a4cb37286d43b0579e3f32e667531b4551d380fc0` |
| 103 | `theorem` | [deriv_const](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-const-source-edition-2.md) | 687 | `result-track:dd2a489cc939fdf606d114a27feb52bf7bb79fed66fb6bdef1d422e8d58481c2` |
| 104 | `theorem` | [deriv_const'](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/deriv-const.md) | 692 | `result-track:61e44e83b0ffa4aea29ebb5ded8894db592862aeb13f47eda878852bd84bc76b` |
| 105 | `theorem` | [derivWithin_const](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/derivwithin-const.md) | 696 | `result-track:759661f87c724d97178e340899487e4a6dea375dcfefe794fd49e6152949a97c` |
| 106 | `theorem` | [HasDerivAtFilter.tendsto_nhds](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivatfilter-tendsto-nhds.md) | 706 | `result-track:a9e24de70831b6c75ee5d8601124246400f4000a2859e7d92cb3205bcfb04a4b` |
| 107 | `theorem` | [HasDerivWithinAt.continuousWithinAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivwithinat-continuouswithinat.md) | 711 | `result-track:65bdf7398a568b62f0497ff2d8553d34147b92e29f9e79c769196614b9b03108` |
| 108 | `theorem` | [HasDerivAt.continuousAt](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-continuousat.md) | 716 | `result-track:2e9c84db7ca0c589ebb0c13891d3320b148f124f5a140c84eb40e8e12f865e89` |
| 109 | `theorem` | [HasDerivAt.continuousOn](../../../../RealFunctions/DerivBasicDerivWithinOfMem.lean/declarations/hasderivat-continuouson.md) | 720 | `result-track:19a9bb80350687d4ff128f8fa73fe46cd8ac67b239a704ab304c74d3086e0a19` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ddfc25261ed2b7492a570522f7620cf7c531ddd99c5a317a9178d7cffde123c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variante271e490acdf43615a44d67e4e1405980e780d5af3857f2a8be0258fb8ed34a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
