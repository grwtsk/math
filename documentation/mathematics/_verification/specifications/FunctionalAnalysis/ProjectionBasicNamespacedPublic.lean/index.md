# Verification target: Projection Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0ef7a90eec68277169d82e36b073488027b2dabc",
  "lexical_observation_count": 87,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0ef7a90eec68277169d82e36b073488027b2dabc`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean.json)

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
| 1 | `class` | [HasOrthogonalProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/hasorthogonalprojection.md) | 57 | `declaration-track:6a0b792a84c559564c3f9b3c4c1b47ceb41b60fbf2431daa2a0e070d58012493` |
| 2 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 62 | `declaration-track:7547ab11e8ad8cb045531fc726903a3ee788000d6091ce99da1926159c409dfb` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 70 | `declaration-track:894241ce35559330a2fa0c2708b8f0410dd2250d9bfbbd7c81e4b85ef58a2256` |
| 4 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/hasorthogonalprojection-map-linearisometryequiv-source-edition-2.md) | 77 | `declaration-track:7fe32094207340dd6d83855a961cdbfdbff42d767019d8fa33e5ffc188fad6a7` |
| 5 | `instance` | [HasOrthogonalProjection.map_linearIsometryEquiv'](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/hasorthogonalprojection-map-linearisometryequiv.md) | 85 | `declaration-track:2dba8ced9cb9b0f728a9373cb2d142170ddf6b12176d885e70c90a6e75de50db` |
| 6 | `instance` | [HasOrthogonalProjection.comap](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/hasorthogonalprojection-comap.md) | 90 | `declaration-track:e85c36dae8e7864c28b1479678b3f2f5ade2047945c263f42b91eb827fa0e139` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 98 | `declaration-track:dbcfba0aecee16f5c72c9c15a84216a974e7f6715ce640ed5d2cee10c79ea9ac` |
| 8 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/instance.md) | 100 | `declaration-track:1962a16feb1ef94639684d00cb7f50ba1bbd2db8fee903721f4f042a576212ab` |
| 9 | `theorem` | [isCompl_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/iscompl-orthogonal.md) | 105 | `result-track:1a99af6a260997d321084206fff6fa46b1239b4fdef5f3262d8e863641723a56` |
| 10 | `theorem` | [norm_projection_orthogonal_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-projection-orthogonal-le.md) | 111 | `result-track:889828a3d4a0f35868dc63aa3dc329807ca19dca0e791b8aba3f7a4a8cbb071e` |
| 11 | `theorem` | [isTopCompl_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/istopcompl-orthogonal.md) | 117 | `result-track:b65f521775a3322c9f8107178dd809a43448b9a80bd027dc3a35097b17cd61e0` |
| 12 | `def` | [orthogonalProjectionOnto](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto.md) | 129 | `declaration-track:5668f776f674eb55a09c3628627e708fa1204bd119fae3e2f07e7f1cf345d0aa` |
| 13 | `abbrev` | [orthogonalProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojection.md) | 132 | `declaration-track:14525cb2d23f54dd2cbb499dff13adeb03ba854a4e492950c9f22514e3a93a22` |
| 14 | `def` | [starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection.md) | 140 | `declaration-track:1fca80495b36553179391b903207aa1f3b66ea7cf1b85cb76db977a1f5cf587f` |
| 15 | `abbrev` | [orthogonalProjectionFn](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectionfn.md) | 148 | `declaration-track:06f4b37c6614e8a2a486a90dd13f244720a4fe4185eead494d4d854544b167b0` |
| 16 | `theorem` | [orthogonalProjectionFn_eq](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectionfn-eq.md) | 151 | `result-track:5092936aa712cb0541ce9a8f84b4cf50185a3b3a2dbab08ae488254510bf2f9d` |
| 17 | `lemma` | [starProjection_apply](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-apply.md) | 154 | `result-track:713d47d6088293a39083a5776c23715c59de89c0418013ac92a79f54b0bc1b48` |
| 18 | `lemma` | [coe_orthogonalProjectionOnto_apply](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/coe-orthogonalprojectiononto-apply.md) | 158 | `result-track:93986ed274144e1b6201ce7f930fdb725d5b615d4fcc7e9464ca031f73f401e5` |
| 19 | `lemma` | [starProjection_apply_mem](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-apply-mem.md) | 165 | `result-track:3d7080211bf73749307f03547f1d24ce07da0c2fdf6db746a4e362b979aca9ce` |
| 20 | `theorem` | [starProjection_inner_eq_zero](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-inner-eq-zero.md) | 173 | `result-track:549508aa042f11c77a3cc64a3be94ee892397082a40860e412c41cf659f545fd` |
| 21 | `theorem` | [sub_starProjection_mem_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/sub-starprojection-mem-orthogonal.md) | 182 | `result-track:539209fce058e7329430e8711cb6c2e81d0d2a982c3fa7fd491d9e9ace9439a1` |
| 22 | `theorem` | [eq_starProjection_of_mem_of_inner_eq_zero](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/eq-starprojection-of-mem-of-inner-eq-zero.md) | 189 | `result-track:85c37807ae68d6fb3cbd677747e95b78d03aac4a253ac01ebc8d21514291d5e1` |
| 23 | `theorem` | [eq_starProjection_of_mem_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/eq-starprojection-of-mem-orthogonal-source-edition-2.md) | 201 | `result-track:a65fc32fd16f27cf5827d58877d22aa254dfb6c2f183ad2e7e518bfdef64f18b` |
| 24 | `theorem` | [eq_starProjection_of_mem_orthogonal'](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/eq-starprojection-of-mem-orthogonal.md) | 207 | `result-track:1661db07b9ecb04df27e076b07cc29fdeb6996043fe63adcc2c90bbfff3718f5` |
| 25 | `theorem` | [starProjection_orthogonal_val](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-orthogonal-val.md) | 212 | `result-track:f05e9bb3ecda70a62767197fc8346c0eadc00adbfb2bcb56630d4bd5d522b7db` |
| 26 | `theorem` | [orthogonalProjectionOnto_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-orthogonal.md) | 217 | `result-track:e58929c102acfdbde16d14eb440909c0eaec75de779cfc474ec6676b2fb466ea` |
| 27 | `lemma` | [starProjection_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-orthogonal-source-edition-2.md) | 225 | `result-track:be75b90cd33b5b18074e278367eedfea2f107873f20ceb2d27b4603b3f335c6f` |
| 28 | `lemma` | [starProjection_orthogonal'](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-orthogonal.md) | 232 | `result-track:1f45deb31dd7051d28afea7eedfe47bb4191b886f78467f4598d1a42147d21db` |
| 29 | `theorem` | [starProjection_minimal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-minimal.md) | 236 | `result-track:06ead82d0240fc6235a5494e8ecb3c9687c59fd5049d7c222542efad5719f291` |
| 30 | `theorem` | [orthogonalProjectionOnto_mem_subspace_eq_self](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-mem-subspace-eq-self.md) | 243 | `result-track:d3cc3247f9d04d7a6a63fbdc4a1c974f6c685120d582b5321c916830ae1b9802` |
| 31 | `theorem` | [starProjection_mem_subspace_eq_self](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-mem-subspace-eq-self.md) | 252 | `result-track:0142c870effa277e37adf122f65df9969743fc18bfa38ad27a9bbdc1d713f3fb` |
| 32 | `theorem` | [starProjection_eq_self_iff](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-eq-self-iff.md) | 256 | `result-track:b117afd5cf3d2dbcfddab3fb1d4e69b576bc7d0a8ad5aec2c69d4402fd283d14` |
| 33 | `lemma` | [isIdempotentElem_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/isidempotentelem-starprojection.md) | 264 | `result-track:2308280f290aa81ccdd398859e3e176e33cf2464dc7fb272ef9fc13d82a3bbcb` |
| 34 | `lemma` | [range_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/range-starprojection.md) | 268 | `result-track:059f20ebbdb574170cb031c98327d84cd3460b9fe4a640b00df60a7e9ff1da7d` |
| 35 | `lemma` | [starProjection_top](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-top-source-edition-2.md) | 274 | `result-track:1805589a4c29e1887e1b98ebf542d618326b7dbf2a518d265071b32215872cd4` |
| 36 | `lemma` | [starProjection_top'](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-top.md) | 278 | `result-track:0d607dad3e4f331a269934ab95c67b50e3b65792063ca2cd38f736ca774fb122` |
| 37 | `theorem` | [orthogonalProjectionOnto_eq_zero_iff](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-eq-zero-iff.md) | 282 | `result-track:94f4d27ec328b9e2dc06ffe6323f278a3110736ac068e9626b62169ab161cd65` |
| 38 | `theorem` | [ker_orthogonalProjectionOnto](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/ker-orthogonalprojectiononto.md) | 294 | `result-track:fc275dc6b1a1d5a0378e1c6b20226ebde9860fa6cc9b9ff9e8c159dbf0280576` |
| 39 | `lemma` | [ker_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/ker-starprojection.md) | 301 | `result-track:bbef6e3531f1c758e2d9f59f6a45c736453ae5692c57e09d5d9bb96091eb6270` |
| 40 | `theorem` | [Projection Basic Namespaced Public](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/map-starprojection-source-line-306-occurrence-2.md) | 306 | `result-track:9d4277ca847c511600aafda2b7aea32942eb4dd4447140b84ca72d55034c6b43` |
| 41 | `theorem` | [Projection Basic Namespaced Public](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/map-starprojection.md) | 315 | `result-track:4685e3fb2f07d1b8532a5fcf5296785776a4cca0d6fb92c919e06b91d9f07ff2` |
| 42 | `theorem` | [starProjection_map_apply](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-map-apply.md) | 324 | `result-track:f425ad249ea1f0c8009483fc4f6b2238ffb6d1f8d7572ff34d2ed0f00d8fbba1` |
| 43 | `theorem` | [orthogonalProjectionOnto_bot](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-bot.md) | 334 | `result-track:ae92a9517a6cec7d133623c407c325c02f1905ac1d68bee90a143d8cabde6ab3` |
| 44 | `lemma` | [starProjection_bot](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-bot.md) | 339 | `result-track:43cab2a0af6361c3564cd2d7b37e20d2a783e856213efe85c316500fa3139ff6` |
| 45 | `theorem` | [orthogonalProjectionOnto_norm_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-norm-le.md) | 345 | `result-track:d4e4f4e58ab0333fcc259922f3cccc2431a2bb319df7e4239a33ec9b33c2deaa` |
| 46 | `theorem` | [starProjection_norm_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-norm-le.md) | 352 | `result-track:c46614907a564941b14cae07940c3652cfe8e0d490ae33965e605cdcd4def282` |
| 47 | `theorem` | [norm_orthogonalProjectionOnto_apply](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-orthogonalprojectiononto-apply.md) | 355 | `result-track:cc27da14e7ac1442fd80edb9367845b4db665f546aa6eb7ca5834c7813b2e0a8` |
| 48 | `theorem` | [norm_starProjection_apply](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-starprojection-apply.md) | 362 | `result-track:3c64b1db438c8eeecc7cb076e536c91304b37bf8819d0f1cd79253b37cb15720` |
| 49 | `theorem` | [norm_orthogonalProjectionOnto_apply_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-orthogonalprojectiononto-apply-le.md) | 367 | `result-track:d1f8e30c20f917e243b0e159f26226ce391dc4efec53e4c8c89a3258b535ff1a` |
| 50 | `theorem` | [norm_starProjection_apply_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-starprojection-apply-le.md) | 377 | `result-track:f26cc78658c718e31db55be0aff7acf24ffb07d616d0798ff2327b5422807f88` |
| 51 | `theorem` | [lipschitzWith_orthogonalProjectionOnto](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/lipschitzwith-orthogonalprojectiononto.md) | 381 | `result-track:6403e65dce5dc09435fb50436030eb878229857a0e60ad291a6d62d3e67c6f12` |
| 52 | `theorem` | [lipschitzWith_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/lipschitzwith-starprojection.md) | 388 | `result-track:68175add2266280def434e811c41104c27a92fa58cccb533529e48f6c4879a19` |
| 53 | `theorem` | [norm_orthogonalProjectionOnto](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-orthogonalprojectiononto.md) | 393 | `result-track:79fad5a8e204931379429d7bafec77a119518b08ea7aa9f5a963973b848be9b1` |
| 54 | `theorem` | [norm_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-starprojection.md) | 403 | `result-track:debdb0d4186a9ea42d118568e60236d89a1c4ef8e6e7b30e2c0a6b81f8de4b01` |
| 55 | `theorem` | [smul_starProjection_singleton](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/smul-starprojection-singleton.md) | 409 | `result-track:fe0c4ca4ff19a26aa7f7ffab32221e0902bc971f39b6fd9778fb66878f4222a6` |
| 56 | `theorem` | [starProjection_singleton](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-singleton.md) | 420 | `result-track:96e7eaf73ec93ae231c0f2dbddbb56e8f7eb4036541bd0ada0c0c2cc7354d13c` |
| 57 | `theorem` | [starProjection_unit_singleton](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-unit-singleton.md) | 433 | `result-track:36af51d38bec2f7d6803097354686eba960d2826bb356954bdfc923f43bf66aa` |
| 58 | `theorem` | [exists_add_mem_mem_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/exists-add-mem-mem-orthogonal.md) | 443 | `result-track:bcb158244c58141004386e291d073989431b7ba77d79053635affefd6118a9de` |
| 59 | `theorem` | [orthogonalProjectionOnto_apply_of_mem_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-apply-of-mem-orthogonal.md) | 449 | `result-track:0ced9807cb22ff5a35ccc4e3e72ced80b1f3e638c152fdbfb4471387dd6734c0` |
| 60 | `theorem` | [IsOrtho.orthogonalProjectionOnto_comp_subtypeL](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/isortho-orthogonalprojectiononto-comp-subtypel.md) | 458 | `result-track:3a9baea44ff70873774711ca0ad710707f44fa01e6cf33a33cc421e3af58be30` |
| 61 | `theorem` | [IsOrtho.starProjection_comp_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/isortho-starprojection-comp-starprojection.md) | 465 | `result-track:a6de5e527b2aaf10cb7a75e407ba0ce8826a322048497faa74e817051ed755b8` |
| 62 | `theorem` | [orthogonalProjectionOnto_comp_subtypeL_eq_zero_iff](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-comp-subtypel-eq-zero-iff.md) | 473 | `result-track:4b1c05c8c45803f758a586038f2572e092cb95cf71c1c90007541e427e5b76e2` |
| 63 | `theorem` | [starProjection_comp_starProjection_eq_zero_iff](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-comp-starprojection-eq-zero-iff.md) | 485 | `result-track:2f3170644c7f3fec70759e293868c08702b19c4a52df381d77d4fe03ac7c0cd1` |
| 64 | `theorem` | [orthogonalProjectionOnto_orthogonal_apply_eq_zero](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-orthogonal-apply-eq-zero.md) | 496 | `result-track:3d5e00999c18e0ff02cc52e1934c5bb97bcf5306ffb2761952d088fcd33d2267` |
| 65 | `theorem` | [starProjection_orthogonal_apply_eq_zero](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-orthogonal-apply-eq-zero.md) | 503 | `result-track:c2b3d36fa3a03cb2ec2e4a12329fd6fa467f70a16fe57b4b4850d36b3529945a` |
| 66 | `theorem` | [orthogonalProjectionOnto_starProjection_of_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-starprojection-of-le.md) | 510 | `result-track:749847792514770bf452fd5316fcbec36b5e34c16d50e18add1cbcb2514d6cfa` |
| 67 | `theorem` | [starProjection_comp_starProjection_of_le](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-comp-starprojection-of-le.md) | 521 | `result-track:f9fc24c3a046defd6b27de8927e112bbf8d774773b4ab40099c6a5c88633a82f` |
| 68 | `theorem` | [Projection Basic Namespaced Public](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/hasorthogonalprojection-range.md) | 528 | `result-track:5908f51e38672b19b30d342ed66d5cbbcf0defb12ec21560eb414bdf032f120d` |
| 69 | `theorem` | [Projection Basic Namespaced Public](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/hasorthogonalprojection-range-source-line-534-occurrence-2.md) | 534 | `result-track:da31b75c98094ad0e0b4e408107d4b24602b14b26d7ac4a490e79975738053fd` |
| 70 | `theorem` | [orthogonalProjectionOnto_orthogonalComplement_singleton_eq_zero](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectiononto-orthogonalcomplement-singleton-eq-zero.md) | 542 | `result-track:037f3e87cf5780f06a565e88bb33056997bb6e4e8dea5893e1ccbb6efe1607d6` |
| 71 | `theorem` | [starProjection_orthogonalComplement_singleton_eq_zero](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-orthogonalcomplement-singleton-eq-zero.md) | 551 | `result-track:cdc27f41a6f069287110d40d49bcef1f83d15312a2246fe90688c1e31cddb89f` |
| 72 | `theorem` | [starProjection_add_starProjection_orthogonal](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-add-starprojection-orthogonal.md) | 558 | `result-track:d17e3569ef32caa9aea11cd992bf5f27274cf4d4780fc978dfc6b72f53fc21be` |
| 73 | `theorem` | [norm_sq_eq_add_norm_sq_projection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-sq-eq-add-norm-sq-projection.md) | 563 | `result-track:863e74654f6ff95ad366e05e74fa414a5085c10202f9138451b78045b6146e5c` |
| 74 | `theorem` | [norm_sq_eq_add_norm_sq_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/norm-sq-eq-add-norm-sq-starprojection.md) | 573 | `result-track:17e6d875c8fa781fab5d45b0341ff277f1e10cece96ee3aca7b2c6eb4d53af07` |
| 75 | `theorem` | [mem_iff_norm_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/mem-iff-norm-starprojection.md) | 578 | `result-track:52eac1d3e0407ba9492e732e4ad57d2da9e739ee5814749537299cf1015e2ab0` |
| 76 | `theorem` | [id_eq_sum_starProjection_self_orthogonalComplement](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/id-eq-sum-starprojection-self-orthogonalcomplement.md) | 587 | `result-track:98c4c6ba3aa0b348907fe9c79121bac2036d9f14a35f4ce07a7431f7ba04198d` |
| 77 | `theorem` | [inner_orthogonalProjectionOnto_eq_of_mem_right](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/inner-orthogonalprojectiononto-eq-of-mem-right.md) | 595 | `result-track:f8d6228d52185dc6fe93c60b05f7d1548edbcd41ec22eaa64e661f66187e8f8f` |
| 78 | `theorem` | [inner_orthogonalProjectionOnto_eq_of_mem_left](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/inner-orthogonalprojectiononto-eq-of-mem-left.md) | 608 | `result-track:019a4e1d2797665b10ba5a0dd88cb75bd669facf73f92032ed2eb3adb48e5cbc` |
| 79 | `theorem` | [inner_starProjection_left_eq_right](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/inner-starprojection-left-eq-right.md) | 618 | `result-track:27e042f6335daebd1cde3d4e7b14495e4bd0203ccd1e893ed0273760879645fd` |
| 80 | `theorem` | [starProjection_isSymmetric](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-issymmetric.md) | 624 | `result-track:67f6e722cd413dcadcb20af86f27662cf08e25f9dd4a7a540e1216678616be43` |
| 81 | `theorem` | [isSymmetricProjection_starProjection](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/issymmetricprojection-starprojection.md) | 631 | `result-track:e9eb6e44c4b1463640a468b28f88b30bcff924c6280679d59760122147811c29` |
| 82 | `theorem` | [Projection Basic Namespaced Public](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/issymmetricprojection-iff-eq-coe-starprojection-range.md) | 638 | `result-track:0d947a1510713dbb0ed4c77e0b4eece1df406668d0716e1bb14945b6ee153e9b` |
| 83 | `lemma` | [Projection Basic Namespaced Public](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/issymmetricprojection-iff-eq-coe-starprojection.md) | 649 | `result-track:416530616e1307a9ea68529fb58566f4ea6b7958b03cc92a62de29c4be5037fb` |
| 84 | `theorem` | [starProjection_apply_eq_zero_iff](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/starprojection-apply-eq-zero-iff.md) | 655 | `result-track:62f8e15c8c38ca403d5df301bc56853de38266e8938f1f15baa0f8f1dd46d389` |
| 85 | `lemma` | [re_inner_starProjection_eq_normSq](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/re-inner-starprojection-eq-normsq.md) | 664 | `result-track:c53742dca3c12e5d5bf410f419f9bb6e277114973de74e6561458d69728fb32b` |
| 86 | `theorem` | [orthogonalProjectionFn_norm_sq](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/orthogonalprojectionfn-norm-sq.md) | 673 | `result-track:d07ac23fd131709aef502ed9e19c62b26665222d893ac0debf372eea4de787a0` |
| 87 | `lemma` | [re_inner_starProjection_nonneg](../../../../FunctionalAnalysis/ProjectionBasicNamespacedPublic.lean/declarations/re-inner-starprojection-nonneg.md) | 678 | `result-track:4012125ca3929eccb5140282055fed0ba22f2cc67aa1210b5c78e41f8858c33a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=970153b6de76c41e5259de3858053b11eeab346626b97e33bf333443331cbd10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantd2f605286eb583e4b1ca8672d780e0c1be4fdc062ec0ea45cf6db90693d23565.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
