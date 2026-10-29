# Verification target: Uniform Space Uniform Convergence Uniform Convergence Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c211454482223ca2c3298c9f35ff078031a90e2a",
  "lexical_observation_count": 81,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c211454482223ca2c3298c9f35ff078031a90e2a`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean.json)

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
| 1 | `def` | [TendstoUniformlyOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter.md) | 75 | `declaration-track:04ffcc622bcaa9034a543a355edc651d1ded405e4f3fea58488dff1ca1559f8c` |
| 2 | `theorem` | [tendstoUniformlyOnFilter_iff_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-iff-tendsto.md) | 83 | `result-track:64a7614cac2e2fc2539a8ab88879ce5961ed18ed350ac66764ea87c7c53d01d6` |
| 3 | `def` | [TendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon.md) | 91 | `declaration-track:7503e5c92ef0fb8f1723488c2d8bf44ce5c2785159aa3fc6f1592b60c3b854fb` |
| 4 | `theorem` | [tendstoUniformlyOn_iff_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff-tendstouniformlyonfilter.md) | 94 | `result-track:3306ec29a29f6437fb3c4fdad41ae786eac50388350919b391a82e0bb91de54d` |
| 5 | `theorem` | [tendstoUniformlyOn_iff_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff-tendsto.md) | 108 | `result-track:68b026ac87fd9f8caa910c1556c6dfacc2b4e9878dd5e44c4493c6faae7ed2ae` |
| 6 | `def` | [TendstoUniformly](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly.md) | 117 | `declaration-track:3cf8e78351474f1b463cba3d1067122b4fa8f2266c63f2b720f48659c7fe9c79` |
| 7 | `theorem` | [tendstoUniformlyOn_univ](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-univ.md) | 120 | `result-track:d8bcb4cf0ac6f014d7445253fb20886a9944c5e6ac0a6a18dc4322faafc3eba1` |
| 8 | `theorem` | [tendstoUniformly_iff_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-iff-tendstouniformlyonfilter.md) | 123 | `result-track:94edb57ff07433e19198fcd78ebef1a14561b99e6a4f85a0355ad1367eb60b7a` |
| 9 | `theorem` | [TendstoUniformly.tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-tendstouniformlyonfilter.md) | 127 | `result-track:5bf479065e4d082df8e23023ccfc735050c069159a20a307c38f2de8361987a4` |
| 10 | `theorem` | [tendstoUniformlyOn_iff_tendstoUniformly_comp_coe](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff-tendstouniformly-comp-coe.md) | 130 | `result-track:ec41094a50f29ca84b95e12a64cb401583b420b0e932aab72160e7ea3dc06ca6` |
| 11 | `lemma` | [tendstoUniformlyOn_iff_restrict](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff-restrict.md) | 134 | `result-track:35bb3ac1de2513e0bef2358224d5a9990d6c734fbef3c7d48064370775c08071` |
| 12 | `theorem` | [tendstoUniformly_iff_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-iff-tendsto.md) | 142 | `result-track:e3b6dae749acd9d5cc65a52ef3712f962b0f52d42bae2cdf0f38e6e2b7027523` |
| 13 | `theorem` | [TendstoUniformlyOnFilter.tendsto_at](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-tendsto-at.md) | 147 | `result-track:70f1a7f5979908db30b32cc2213b026c970d614dd062e2b4beb5cb3e6659f89c` |
| 14 | `theorem` | [TendstoUniformlyOn.tendsto_at](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-tendsto-at.md) | 155 | `result-track:ee3291a6aed86995c409322709eefde0a53e1c07ca0f8b70765e13dfe889ac0e` |
| 15 | `theorem` | [TendstoUniformly.tendsto_at](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-tendsto-at.md) | 161 | `result-track:8ff4482fe2a9eccd6e58c2eb617c5cfa37011f2d7caedccb84ca81a1827087f4` |
| 16 | `theorem` | [TendstoUniformlyOnFilter.mono_left](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-mono-left.md) | 165 | `result-track:669f5cdf8b6420dcfda53129577ec8c687f618bbbfa58b7dddf405d4f7d3e313` |
| 17 | `theorem` | [TendstoUniformlyOnFilter.mono_right](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-mono-right.md) | 169 | `result-track:309845209d3fdc2960693115b6a0e7fe69678d9fa0ab63d7ad5adfc3f6c05ec8` |
| 18 | `theorem` | [TendstoUniformlyOn.mono](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-mono.md) | 173 | `result-track:d6e5ca1f9520cce65d2afd55af635251e8c10382b64fdd007e2c8d482c42ac07` |
| 19 | `theorem` | [TendstoUniformlyOnFilter.congr_inseparable](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-congr-inseparable.md) | 178 | `result-track:bba8244b451157b4453280e04e912fb82d0273b24a5edd04f80e84ed28923373` |
| 20 | `theorem` | [TendstoUniformlyOnFilter.congr](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-congr.md) | 186 | `result-track:89b859506828c1866ab09c3886e8888eb071007e3105a3c99a8532659d021b70` |
| 21 | `theorem` | [TendstoUniformlyOn.congr_inseparable](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-congr-inseparable.md) | 191 | `result-track:160bd47f04eb6dd0866da86e9867fe91fe91b25e012b179dba1a07d9a377e217` |
| 22 | `theorem` | [TendstoUniformlyOn.congr](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-congr.md) | 197 | `result-track:865c9beb21382bf385ef21d69baee2afaf5484538e5245cc754c927da62e568c` |
| 23 | `lemma` | [tendstoUniformly_congr_inseparable](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-congr-inseparable.md) | 201 | `result-track:0794af234391d2ea245a126fa8521bdf6a09f338a0ae4450f90d327317a2c685` |
| 24 | `lemma` | [tendstoUniformly_congr](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-congr.md) | 208 | `result-track:a9d96d448151de3201d66d5b9a13af2984ac026ea3f930da8d234f82c0999e88` |
| 25 | `theorem` | [TendstoUniformlyOn.congr_inseparable_right](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-congr-inseparable-right.md) | 212 | `result-track:9134293a8f5206edcf820048999c3c0a8d4870c38def969e4e0ab2ceed574936` |
| 26 | `theorem` | [TendstoUniformlyOn.congr_right](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-congr-right.md) | 219 | `result-track:23e4804088d777515decf47e07dae0f1d0c017988756b7a352443f6a2b889352` |
| 27 | `theorem` | [TendstoUniformly.tendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-tendstouniformlyon.md) | 223 | `result-track:dd10d5516894c34421e8bf614f11f57eb8ce18058375eb238cd4aafa9acf8fcd` |
| 28 | `theorem` | [TendstoUniformlyOnFilter.comp](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-comp.md) | 228 | `result-track:8fa8b3387a6ab15b0d4f0385f2f7eefe932d6592e9f3f3e173efdbc719e811bd` |
| 29 | `theorem` | [TendstoUniformlyOn.comp](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-comp.md) | 234 | `result-track:82c7360b8bfea26a245140bf356e3741c702d4182505df5e1b9ac999fc33398b` |
| 30 | `theorem` | [TendstoUniformly.comp](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-comp.md) | 240 | `result-track:d181444c7b518283c7c4e986f29ec6d5dfb993a2963b6cf4006faacb5aa36594` |
| 31 | `theorem` | [UniformContinuous.comp_tendstoUniformlyOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuous-comp-tendstouniformlyonfilter.md) | 247 | `result-track:85a0600f9be19f4f9f92596cd2eb2d12a590b64708ea1b8f951e20a0b28c3e49` |
| 32 | `theorem` | [UniformContinuous.comp_tendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuous-comp-tendstouniformlyon.md) | 253 | `result-track:0dc849be386608cd413f5f2bfc306a7a8df9ed785bc3184e2e4eccac86f445d4` |
| 33 | `theorem` | [UniformContinuous.comp_tendstoUniformly](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuous-comp-tendstouniformly.md) | 258 | `result-track:5f9dff81cb4a41986d35904c07bc1854b9a3c189240a13bba8e640ed41c6c9e9` |
| 34 | `theorem` | [TendstoUniformlyOnFilter.prodMap](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-prodmap.md) | 262 | `result-track:b2b256181bb11959b843e8fd65afb1f2b788e9a0fb1d5f3ce81722f9c77e2927` |
| 35 | `theorem` | [TendstoUniformlyOn.prodMap](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-prodmap.md) | 271 | `result-track:46e581099fee74f73f965b0f36bb7cbebe46330881aca6be5086865cad8e3d99` |
| 36 | `theorem` | [TendstoUniformly.prodMap](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-prodmap.md) | 279 | `result-track:7bfd203c46e57b3fe7a901d3ef8b06443b56982f27551c0167357c9bbaecb587` |
| 37 | `theorem` | [TendstoUniformlyOnFilter.prodMk](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-prodmk.md) | 285 | `result-track:fcc57c3518f83bba88dfaf81797356275a623a10c6e4e54ec33efa811c931e39` |
| 38 | `theorem` | [TendstoUniformlyOn.prodMk](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-prodmk.md) | 292 | `result-track:ab83b1e05c248937c2202e3af6721b091da3c5781fcb22aeccf56982df8c657d` |
| 39 | `theorem` | [TendstoUniformly.prodMk](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-prodmk.md) | 299 | `result-track:43d6b1bec6357aa69d501c4800ce458ab6c4a10ed8230408224254f5658c3ea8` |
| 40 | `theorem` | [tendsto_prod_filter_iff](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendsto-prod-filter-iff.md) | 306 | `result-track:ca50eec83db17bfaadd15307ac4d0829bab18b398b0ca05ee8ec4c2d82538dad` |
| 41 | `theorem` | [tendsto_prod_principal_iff](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendsto-prod-principal-iff.md) | 313 | `result-track:94f1952582ba5f0c8c822f240e5105cc6b358886fac85c61d170dba714c8b1fe` |
| 42 | `theorem` | [tendsto_prod_top_iff](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendsto-prod-top-iff.md) | 319 | `result-track:f3574a9007fe5bbe8accefbedab53c6577bed42d9cb0fb1506df046cd1504461` |
| 43 | `theorem` | [tendstoUniformlyOn_empty](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-empty.md) | 325 | `result-track:64182bee8817928e8c693e42a3cbb4f7fe9879128893f14a2d35d1a374279ab1` |
| 44 | `theorem` | [tendstoUniformlyOn_singleton_iff_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-singleton-iff-tendsto.md) | 328 | `result-track:9a7201ed50d33a51baa1dade053dab9e776fe19b4b5efcc312c4b71c0e83e0b1` |
| 45 | `theorem` | [Filter.Tendsto.tendstoUniformlyOnFilter_const](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/filter-tendsto-tendstouniformlyonfilter-const.md) | 335 | `result-track:b9da6a49025426f8ae564033fc59494b3feecda479d4a2581f568b0bf3118688` |
| 46 | `theorem` | [Filter.Tendsto.tendstoUniformlyOn_const](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/filter-tendsto-tendstouniformlyon-const.md) | 342 | `result-track:e1b4442a665fb867e1940647acb50c31f90eac9e02cd6ef63ee63a96b42c4c9c` |
| 47 | `theorem` | [Filter.Tendsto.tendstoUniformly_const](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/filter-tendsto-tendstouniformly-const.md) | 348 | `result-track:f66ce4eb5b23be0658c86aa23ee97d590741b87bc10038d9847d6d20021972af` |
| 48 | `theorem` | [UniformContinuousOn.tendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuouson-tendstouniformlyon.md) | 352 | `result-track:6fb522c0c17a185508bdc2a852e6714374ae51138e0040ef6a14030ea2aa44bb` |
| 49 | `theorem` | [UniformContinuousOn.tendstoUniformly](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuouson-tendstouniformly.md) | 365 | `result-track:9571600e9fb6f4c528e69784ac063066398d63d291299d5b565d8df063f1c2f3` |
| 50 | `theorem` | [UniformContinuous₂.tendstoUniformly](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuous-tendstouniformly.md) | 371 | `result-track:acec5182f9590619fb3b945d73d997fe80fc412704512476e4bcdaad4237fbde` |
| 51 | `lemma` | [tendstoUniformlyOnFilter_iff_of_uniformity](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-iff-of-uniformity.md) | 380 | `result-track:44b980bcd57ec41f6d4b8f250f46380944c73e817f67cf17abec26f4fad93ec2` |
| 52 | `lemma` | [tendstoUniformlyOnFilter_iff](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-iff.md) | 388 | `result-track:8d273db7f33f9b7a4ebd5ddc3d62095bec62e0231cb29dde8d353885c70c6e38` |
| 53 | `lemma` | [tendstoUniformlyOn_iff_of_uniformity](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff-of-uniformity.md) | 398 | `result-track:6ba968c77767dd9b4771b837cb412726c99456bad0fd67cff0745521ad4b3fcb` |
| 54 | `lemma` | [tendstoUniformlyOn_iff](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff.md) | 406 | `result-track:c83523adb9dc45e47d8d76d779d69622aa1a41e98dc80928f95b20d542ea695b` |
| 55 | `lemma` | [tendstoUniformly_iff_of_uniformity](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-iff-of-uniformity.md) | 414 | `result-track:103d16231558826f139e7553f7024ea1f4c18137b37400f55000fa7983a1b22c` |
| 56 | `lemma` | [tendstoUniformly_iff](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-iff.md) | 423 | `result-track:2641e69c4f26bfc4b36a5660bde34ea6b677d0f9aff5efedbc5be25b9eafcee1` |
| 57 | `def` | [UniformCauchySeqOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqonfilter.md) | 434 | `declaration-track:3c7028aee8ce44a3824c4f27e1ccde489313a2ee0305e551dc9a9eb1d35c85c5` |
| 58 | `def` | [UniformCauchySeqOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon.md) | 439 | `declaration-track:56191a708056131b27c49fa4efb54e10580e449f3f1894d4a3597e4b7836e19d` |
| 59 | `theorem` | [uniformCauchySeqOn_iff_uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-iff-uniformcauchyseqonfilter.md) | 442 | `result-track:56efb299b8976eed480708593bb1af456c0dc8883f059515507e91a839ccd8aa` |
| 60 | `theorem` | [UniformCauchySeqOn.uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-uniformcauchyseqonfilter.md) | 448 | `result-track:e97ea3ed302313e9773c77c4c0cb8f8bb1ee0da60e08d136aafff7309bfc1ef5` |
| 61 | `theorem` | [TendstoUniformlyOnFilter.uniformCauchySeqOnFilter](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-uniformcauchyseqonfilter.md) | 452 | `result-track:e834d2ef755ac2ae5a35055130ae0cf4d83146f36e0aa281234591e19fc70314` |
| 62 | `theorem` | [TendstoUniformlyOn.uniformCauchySeqOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-uniformcauchyseqon.md) | 463 | `result-track:b0e212ad012d840d93169cb291c3c85741cd8f98ab68a341dbda4a4c53900930` |
| 63 | `theorem` | [UniformCauchySeqOnFilter.tendstoUniformlyOnFilter_of_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqonfilter-tendstouniformlyonfilter-of-tendsto.md) | 469 | `result-track:e14f4fac7d95c0968fc2cb8ae763d31e27159b7fb4f9595ed8f12cfcef6555c8` |
| 64 | `theorem` | [UniformCauchySeqOn.tendstoUniformlyOn_of_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-tendstouniformlyon-of-tendsto.md) | 500 | `result-track:bd5075f9cc99675c9f97e8d42683028bd3043a0d91c2338340679bc1b0934148` |
| 65 | `theorem` | [UniformCauchySeqOnFilter.mono_left](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqonfilter-mono-left.md) | 505 | `result-track:b4ea344f75c246a21e73629c28b212c6543a9afd2770f57a63e17b4c8c3054cd` |
| 66 | `theorem` | [UniformCauchySeqOnFilter.mono_right](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqonfilter-mono-right.md) | 509 | `result-track:25609d21c46b68076981eddea4e1da4a598a6cc0bbdd01db568b602b4d837cd4` |
| 67 | `theorem` | [UniformCauchySeqOn.mono](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-mono.md) | 514 | `result-track:9ab1cf2ea71cf1273c12bd5246d3afcd20fce6598b413cd46b1bf22ba1cb5805` |
| 68 | `theorem` | [UniformCauchySeqOnFilter.comp](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqonfilter-comp.md) | 520 | `result-track:f3a723168976f93dbad9f3b6f5ec5d08ef7d4c2651b8195b30ffe2bad2a2bfc5` |
| 69 | `theorem` | [UniformCauchySeqOn.comp](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-comp.md) | 528 | `result-track:65b2bcff13999dd61eaf2819bcffea14cc9096da3b0dc67e0c8a8643486539e7` |
| 70 | `theorem` | [UniformContinuous.comp_uniformCauchySeqOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcontinuous-comp-uniformcauchyseqon.md) | 535 | `result-track:10aba418534faf695dc4d962732ba82396ccbd7d5206f70bd34d7c28b62349b4` |
| 71 | `theorem` | [UniformCauchySeqOn.prodMap](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-prodmap.md) | 539 | `result-track:dd63ce36d4bfd6cd769ce606e29030a7cc6e66b5ccdefc994d326dda2fa5eba1` |
| 72 | `theorem` | [UniformCauchySeqOn.prod](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-prod-source-edition-2.md) | 552 | `result-track:e0a121eece1537cd24056898a759e169a0ea4311dd98b7d61773aebee0bb3927` |
| 73 | `theorem` | [UniformCauchySeqOn.prod'](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-prod.md) | 557 | `result-track:359ff0ff3e338a210932082876076c5a9e3321711472fb907636b92b92d010b6` |
| 74 | `theorem` | [UniformCauchySeqOn.cauchy_map](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-cauchy-map.md) | 565 | `result-track:a1a3c82d8a42dea9efd8e95c9fd1e2a6b1536ce7769c8d69d0a904993970a5a0` |
| 75 | `theorem` | [UniformCauchySeqOn.cauchySeq](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/uniformcauchyseqon-cauchyseq.md) | 574 | `result-track:2dd73fe2c74329dd8e42ac7135fc1e96e2ba96401a4117214d316fdee481fe9b` |
| 76 | `theorem` | [tendstoUniformlyOn_of_seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-of-seq-tendstouniformlyon.md) | 581 | `result-track:ff9ea19b9224b6acf9d57ed318164e2b025d78d9b8e75e4bac12cd3e7bc87213` |
| 77 | `theorem` | [TendstoUniformlyOn.seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-seq-tendstouniformlyon.md) | 591 | `result-track:d40ad2f5876c328781c17a4f1320d4985572d584b52709332c311419974e0462` |
| 78 | `theorem` | [tendstoUniformlyOn_iff_seq_tendstoUniformlyOn](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyon-iff-seq-tendstouniformlyon.md) | 596 | `result-track:4f3b9e68c408be0d2383c567f80b0c3bef8f05aed62af43249a6909744d5081d` |
| 79 | `theorem` | [tendstoUniformly_iff_seq_tendstoUniformly](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-iff-seq-tendstouniformly.md) | 601 | `result-track:b9123c670c0b66e5cc0b9f830f0726ceed5953ab85bc4944bdcb334392ab11e8` |
| 80 | `theorem` | [TendstoUniformlyOnFilter.tendsto_of_eventually_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformlyonfilter-tendsto-of-eventually-tendsto.md) | 613 | `result-track:e0133c9d82acb0c2aa910f1e007f868145ee905f44ce00f9fe71baec5c3789c4` |
| 81 | `theorem` | [TendstoUniformly.tendsto_of_eventually_tendsto](../../../../GeneralTopology/UniformSpaceUniformConvergenceUniformConvergencePublic.lean/declarations/tendstouniformly-tendsto-of-eventually-tendsto.md) | 627 | `result-track:823f506d67cc72864cdb915278895503499bcccfba70d48e0c8160c2b310cf1a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d68972f046237d62274b76643544a7098fd0b059b2960591054968658dc3ff4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/UniformConvergence/Variant4a8ae31e5122a68de6a5dad6206ff231905d3c39965f1500ea6cf568d4c7126d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
