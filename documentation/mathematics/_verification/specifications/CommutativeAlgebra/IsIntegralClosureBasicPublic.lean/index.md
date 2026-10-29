# Verification target: Is Integral Closure Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54061eeae5ec6e13d42f008066b5fc44c19da317",
  "lexical_observation_count": 89,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54061eeae5ec6e13d42f008066b5fc44c19da317`.

Source path: `GRWTSK/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Subring` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsIntegral.isUnit](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-isunit.md) | 37 | `result-track:9638be720d34dee176d6f03c4a178eed2fbd99eb63670070e2d993cee3db415d` |
| 2 | `theorem` | [isField_of_isIntegral_of_isField'](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isfield-of-isintegral-of-isfield-source-edition-2.md) | 44 | `result-track:cc3b78742d4292be0afe4989cd52d56854bbfa3b5b649950a2557357a0d67cad` |
| 3 | `theorem` | [IsIntegral.inv_mem_adjoin](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-inv-mem-adjoin.md) | 55 | `result-track:0ca69b2ea75c5e0b999c1025414b03e6c931e1833c13fbd9631da9077c99f7ed` |
| 4 | `theorem` | [IsIntegral.inv_mem](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-inv-mem.md) | 65 | `result-track:ac7e032f97ea69b27f142770c3f102bd34f4231b75ed4555c1ca77bc74b55bc9` |
| 5 | `theorem` | [Algebra.IsIntegral.inv_mem](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-inv-mem.md) | 69 | `result-track:d02fc294f1c31af32bd67166c2816d30425ae8f416b3575e86b4486cf81a4e2f` |
| 6 | `theorem` | [IsIntegral.inv](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-inv.md) | 74 | `result-track:3e2dbc619fa5820eecc3890c1f6cbe52e844bba2a2e6d24884d15d1410ad882b` |
| 7 | `theorem` | [IsIntegral.mem_of_inv_mem](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-mem-of-inv-mem.md) | 77 | `result-track:c88134aec7777f2edd9a7a297263af57b5ba038f9dd59124ecfe87db2bea2cae` |
| 8 | `theorem` | [Algebra.IsIntegral.finite](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-finite.md) | 96 | `result-track:28bf47acf90b1c7d67d965aed927356b9a71ddd3d9346327054b3515e1e6bdc6` |
| 9 | `theorem` | [Algebra.finite_iff_isIntegral_and_finiteType](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-finite-iff-isintegral-and-finitetype.md) | 102 | `result-track:27c161caecccd1ead1b01cd27e1d9513438755ee51d1314052bb50f7097f0531` |
| 10 | `theorem` | [RingHom.IsIntegral.to_finite](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-to-finite.md) | 106 | `result-track:b1d7d0631ce48c29089a3271fd53bd476ea37bafb77847a66b977df791f0f64f` |
| 11 | `theorem` | [RingHom.finite_iff_isIntegral_and_finiteType](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-finite-iff-isintegral-and-finitetype.md) | 114 | `result-track:82d4fb1e2cf34055cc04dd080bf9ec1ce65bdd35490fddb91f089ed7f04f9003` |
| 12 | `theorem` | [mem_integralClosure_iff_mem_fg](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mem-integralclosure-iff-mem-fg.md) | 119 | `result-track:ea2063939a982844828e59696cd79236c2185a969376e3cbc0d66157a2f357e2` |
| 13 | `theorem` | [adjoin_le_integralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/adjoin-le-integralclosure.md) | 127 | `result-track:4f12b3330a8a7bd118b49a4a8865f865d67215d9371901cdfa95debe554a53eb` |
| 14 | `theorem` | [le_integralClosure_iff_isIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/le-integralclosure-iff-isintegral.md) | 133 | `result-track:808fa5a85db6de80c9ca84d17ff7a154e8b899c029f56128604ecacebb1c6dd0` |
| 15 | `theorem` | [Algebra.IsIntegral.adjoin](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-adjoin.md) | 138 | `result-track:af4ae2019ead627d5b101bcd234d3210f3429c9d3d551ca78012c9021e37334b` |
| 16 | `theorem` | [integralClosure_eq_top_iff](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/integralclosure-eq-top-iff.md) | 142 | `result-track:2ea9a2a24ff1af94d8ab37d173a60a032536193b4f1abb54af70371adee267ed` |
| 17 | `theorem` | [Algebra.isIntegral_sup](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-sup.md) | 146 | `result-track:f6b336f9a8d25ee29ef32f0787f296f6a72f1bb899c482a1dbb644e10d0276d9` |
| 18 | `theorem` | [Algebra.isIntegral_iSup](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-isup.md) | 151 | `result-track:70b6623d9e9668c6a880416e8feb1252cebfe452a02e5934f5d5f78037d95fa0` |
| 19 | `theorem` | [integralClosure_map_algEquiv](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/integralclosure-map-algequiv.md) | 156 | `result-track:86c7a2da220604d876272dfdfec31ba2fdae018813421142d64dd563a0d06b8d` |
| 20 | `def` | [AlgHom.mapIntegralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/alghom-mapintegralclosure.md) | 169 | `declaration-track:7e09dec4dd76fc74fe84604e7784dc79f1b697b0fea6f6bbcea2fac4f08316e7` |
| 21 | `theorem` | [AlgHom.coe_mapIntegralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/alghom-coe-mapintegralclosure.md) | 174 | `result-track:8ebd51f8f01ffe9a48519d9ea988f25ee9bae442d8839594b6d978e0f16c2e3a` |
| 22 | `def` | [AlgEquiv.mapIntegralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algequiv-mapintegralclosure.md) | 179 | `declaration-track:2a50ea704882420fb618f6b5e0b34ca58690272469f5176cb923e4cc74e5d58f` |
| 23 | `theorem` | [AlgEquiv.coe_mapIntegralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algequiv-coe-mapintegralclosure.md) | 186 | `result-track:17c18a82d4a002c65b66925e6b1877b903bd50d85abefdde70900baf6acddbf1` |
| 24 | `theorem` | [integralClosure.isIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/integralclosure-isintegral.md) | 189 | `result-track:94f46d325fd74c090c82d04a1d427de308b0986d0b93b523fc2d18a68bb3777a` |
| 25 | `instance` | [integralClosure.AlgebraIsIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/integralclosure-algebraisintegral.md) | 195 | `declaration-track:9f451460d482123ed8543b8c801657d45ed113b60598c7943b87dd1589692710` |
| 26 | `theorem` | [IsIntegral.of_mul_unit](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-of-mul-unit.md) | 198 | `result-track:6be0bf94ccd8b734f40452469e21ab5fb3cadd9098847a3b3f6d082641b6bfd3` |
| 27 | `theorem` | [RingHom.IsIntegralElem.of_mul_unit](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegralelem-of-mul-unit.md) | 206 | `result-track:f43cc955f70fbab3db87bebe7db560f9f51e8babddbe591d27d9ddedc4d9b077` |
| 28 | `theorem` | [IsIntegral.of_mem_closure'](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-of-mem-closure-source-edition-2.md) | 212 | `result-track:f5f20539b5f23b5f6286f87e01fd94724913ca8c249398f7637f66d4c29413d7` |
| 29 | `theorem` | [IsIntegral.of_mem_closure''](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-of-mem-closure.md) | 217 | `result-track:2cc63f55939a57137cd4acc0d06e1d186cda083863e24bf64e33e482c170e976` |
| 30 | `theorem` | [IsIntegral.pow](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-pow.md) | 221 | `result-track:5cf97c5f406ffd49a832783e4350886483a784bdae28da398e43bc912b2d4779` |
| 31 | `theorem` | [IsIntegral.nsmul](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-nsmul.md) | 225 | `result-track:f7eb7744b2907f3f9a7e717cc79830c91e0b0893419b9de6ec2e20f7e240317c` |
| 32 | `theorem` | [IsIntegral.zsmul](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-zsmul.md) | 228 | `result-track:d888d9dca6c3b9fc1a166025c73c1bd4957d5b0602bc50b6cbaff3c52c4f1f7e` |
| 33 | `theorem` | [IsIntegral.multiset_prod](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-multiset-prod.md) | 231 | `result-track:c80d99f4eea762f6a6617a4ff761bd8791f2099ed76b9ecff6cecad62e2f8459` |
| 34 | `theorem` | [IsIntegral.multiset_sum](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-multiset-sum.md) | 235 | `result-track:02d5ba6b85e96a98cc14d3a656263c1a1edda9258aa23b4e365f4c55cb468155` |
| 35 | `theorem` | [IsIntegral.prod](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-prod.md) | 239 | `result-track:fb4f02af7e02938a551ff3658442971bd4f45d7c2592c772f25696cfb37b259b` |
| 36 | `theorem` | [IsIntegral.sum](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-sum.md) | 243 | `result-track:fac9f2757282275609818dc8c978d180e2f51a7f18f81ac65827370df9c6920d` |
| 37 | `theorem` | [IsIntegral.det](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-det.md) | 247 | `result-track:1f9b1ba569997bf150b0189154a8797f4e3e8d72f2911d58ed31e9aa7e0f468a` |
| 38 | `theorem` | [IsIntegral.pow_iff](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-pow-iff.md) | 253 | `result-track:58a7bb3c2b703118381baa083bd16149fd57cccd6509934eec66ed8160385b9d` |
| 39 | `theorem` | [Algebra.IsPushout.isIntegral'](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-ispushout-isintegral-source-edition-2.md) | 262 | `result-track:5366e4438037370b4ddbdb1d41e3dae992bf92691889023b01b2035d886880fc` |
| 40 | `theorem` | [Algebra.IsPushout.isIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-ispushout-isintegral.md) | 265 | `result-track:2e0e2127195f40243353426ec0f546ece86919f0219acdbe56409f590479ead2` |
| 41 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/instance-source-edition-2.md) | 269 | `declaration-track:4363a97b2c4da5d6eb4ec5eddeaa7c620083b8f87c2311f0301df25aca9a13c2` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/instance-source-edition-3.md) | 272 | `declaration-track:51bd657317b3b391255be79aaa38df5f5e8b6c7bcbe6624cbf139e5ff0c0d755` |
| 43 | `theorem` | [RingHom.isIntegralElem_leadingCoeff_mul](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegralelem-leadingcoeff-mul.md) | 283 | `result-track:920c1f21dc4e8179433a7d41c312e7cb51ec56260e2817e5932840649e9aef8b` |
| 44 | `theorem` | [isIntegral_leadingCoeff_smul](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-leadingcoeff-smul.md) | 304 | `result-track:e770afd2b914ea8b97c18b5a80de1d972380ab61e05b9d82c1a3f11344280b39` |
| 45 | `lemma` | [Polynomial.Monic.quotient_isIntegralElem](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/polynomial-monic-quotient-isintegralelem.md) | 312 | `result-track:3867eefc4add119275ebd4d0bdb7e05e42343e7d578c18a9cca6029d5c74bacd` |
| 46 | `lemma` | [Polynomial.Monic.quotient_isIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/polynomial-monic-quotient-isintegral.md) | 322 | `result-track:12ffb18aa91dd84e027f15f52e646a3a3441f36e2723e4e33bdb9297c6a68377` |
| 47 | `instance` | [integralClosure.isIntegralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/integralclosure-isintegralclosure.md) | 342 | `declaration-track:ad8f8ffd33f3a3a7ed55fafd3540df5226a74b0afcc3066fc0f4730f630f5d46` |
| 48 | `theorem` | [isIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral.md) | 353 | `result-track:a66b232b405daa664a06ed08d03b25d765e1a498fc49e1a3e127952e75f1d7e6` |
| 49 | `theorem` | [isIntegral_algebra](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-algebra.md) | 358 | `result-track:f22e6aa57d7562285254b46733782c88e8cd3ffd07b3e4314795143fa7417b55` |
| 50 | `lemma` | [isTorsionFree](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/istorsionfree.md) | 361 | `result-track:b5a9dbd90b11eb019047f2fe19a565ef9c4f296d135d09a29809a3317e572579` |
| 51 | `def` | [mk'](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mk.md) | 370 | `declaration-track:b804efaaed032d595aa2206d11eea37f6fc9bf29b78393b22c4a64a73906f9ce` |
| 52 | `theorem` | [algebraMap_mk'](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebramap-mk.md) | 374 | `result-track:b18c8ba2454546d6467fc4b96313dd819a15e55deefa0f17f528cecc510eaf58` |
| 53 | `theorem` | [mk'_one](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mk-one.md) | 378 | `result-track:ac5d3ad51a2d8fcc14d90af684eb518f4a04d6c3986a4572134de3c5a329ee8c` |
| 54 | `theorem` | [mk'_zero](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mk-zero.md) | 382 | `result-track:08ce8f08544c7729dfd592ec246f24ab4ef1e4723fbe6e8436618f11996d57e0` |
| 55 | `theorem` | [mk'_add](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mk-add.md) | 386 | `result-track:1e875dbc1a237f6522a26cff3bef94eec498790edf4586006e4b11d50e931d0a` |
| 56 | `theorem` | [mk'_mul](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mk-mul.md) | 391 | `result-track:d2875621d5b6e2d68bde0ef6ce9ae00b34cbf2b957f42b61b268e23ab9592af1` |
| 57 | `theorem` | [mk'_algebraMap](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/mk-algebramap.md) | 396 | `result-track:2fea8c8f3b9537168f2f4b38b3b37a9dfb402f163ed73cd305eddac3e4d45742` |
| 58 | `theorem` | [isField](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isfield.md) | 402 | `result-track:8f6151ba56b016fe393a789afcedc7d076e65e7327641f29325bcef3c8aadf32` |
| 59 | `theorem` | [of_algEquiv](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/of-algequiv.md) | 407 | `result-track:4dd52d469c539cfcec7aefe330a749c46c9dbfa682e96f14c67ec5b47d16601c` |
| 60 | `def` | [lift](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/lift.md) | 425 | `declaration-track:54c2ca7c4bfa1b4d6eff1df5c729f5809416824354cb071cdbacb1e8723e3232` |
| 61 | `theorem` | [algebraMap_lift](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebramap-lift.md) | 435 | `result-track:94367ce9cf20d1d2bebf902e1bdc0199ea96e0723cca5e582e5ed0a455e56af1` |
| 62 | `def` | [equiv](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/equiv.md) | 448 | `declaration-track:5430b58390809d80196f03938f222ff322766f8a3c3a70e70ba8e8df772cc14d` |
| 63 | `theorem` | [algebraMap_equiv](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebramap-equiv.md) | 456 | `result-track:65029222566857ca03560c61be2a7eed96f58bd5b48a0126d2a6846f97ad9dc5` |
| 64 | `theorem` | [isIntegral_trans](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-trans.md) | 477 | `result-track:1a3d10241f7c9eff014759755d54bb58e1b70229849a358d62c1b29f4408fe5f` |
| 65 | `theorem` | [Algebra.IsIntegral.trans](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-trans.md) | 502 | `result-track:6cf313c89e3bcee58583e7c6f4dc7f888dcf26dd9298d94cb39c8972afacbbb9` |
| 66 | `theorem` | [RingHom.IsIntegral.trans](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-trans.md) | 506 | `result-track:48eeca6fce2946f189ea96920d089cf4dd96ffb2288c160f9461547fe4756b2f` |
| 67 | `lemma` | [IsIntegralClosure.tower_top](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegralclosure-tower-top.md) | 517 | `result-track:0ed160a54b856386e595455449d659fed2f61e0596da7e4393af2f89965e72bc` |
| 68 | `theorem` | [RingHom.isIntegral_of_surjective](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-of-surjective.md) | 525 | `result-track:111706b95f67ce6cfff59d61968f99f3b2987b483b0103828720f7519947ece7` |
| 69 | `theorem` | [IsIntegral.tower_bot](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-tower-bot.md) | 530 | `result-track:bdc737bdbda04432b3a90b16e249ffbf34473fcae1767539d6f36e82bd9ee66d` |
| 70 | `theorem` | [RingHom.IsIntegral.tower_bot](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-tower-bot.md) | 534 | `result-track:58592717bb3681213ebf35cdcc694646897f8bdccc6a2b42c111819f821512f1` |
| 71 | `theorem` | [Algebra.IsIntegral.tower_bot](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-tower-bot.md) | 543 | `result-track:76a7b091c8957890661e9ffbac94a3d33eb81f304eef1a6e528f828f0742be35` |
| 72 | `theorem` | [IsIntegral.tower_bot_of_field](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-tower-bot-of-field.md) | 552 | `result-track:a80220b63e9a2f9433a70a3a9fd139ee5d95faff0e3ab861a9161fd78b11d2c3` |
| 73 | `theorem` | [RingHom.isIntegralElem.of_comp](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegralelem-of-comp.md) | 557 | `result-track:b98c3078476e01fdd9a2d050d7768df50b6dd6dddf0111f1f1a8ae3421ebcd5c` |
| 74 | `theorem` | [RingHom.IsIntegral.tower_top](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-tower-top.md) | 562 | `result-track:c3a3f37fdd3941d7c92094bd1ac48bccfbc0ebf3d3d627e41af6ae9d91bb1b1c` |
| 75 | `theorem` | [Algebra.IsIntegral.tower_top](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-tower-top.md) | 568 | `result-track:0518b2a43fc615c209799263c7e4740178014b0b6f4f8b8325edf31b1124b632` |
| 76 | `theorem` | [RingHom.IsIntegral.quotient](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-quotient.md) | 576 | `result-track:c157d25607d4738624093c1f08db9ab8a870ea5ea1f6f38dcbb388567a144226` |
| 77 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/instance.md) | 583 | `declaration-track:1dcab11433391c1e3529c4909736d0ee0eb41e986572a79c6f4edbb6fdcf0e89` |
| 78 | `instance` | [Algebra.IsIntegral.quotient](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-quotient.md) | 586 | `declaration-track:8bda1d3639f65fe830cf43735772865faf3e9dcd59474dc5a1c3b1e2badf4c29` |
| 79 | `theorem` | [isIntegral_quotientMap_iff](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isintegral-quotientmap-iff.md) | 590 | `result-track:39ddc0b73de5b659ceccd608713b2bf7b1f6461d024283f649f2e62a8f802d7d` |
| 80 | `theorem` | [RingHom.IsIntegral.kerLift](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-kerlift.md) | 601 | `result-track:53777cacbbdc44e4aed4fefa0aa8b1d0a2875aa38eed444cd43d02eb3a20cca0` |
| 81 | `theorem` | [RingHom.IsIntegral.isLocalHom](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ringhom-isintegral-islocalhom.md) | 604 | `result-track:cfbe8ff38f4093bac592a0d14406325d3b365d6c90b0e8b1e047031f49ababf2` |
| 82 | `instance` | [Algebra.IsIntegral.isLocalHom](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-islocalhom.md) | 621 | `declaration-track:1742822b3ef472eb8f36cdffbe66234f6a921b61bfdceddc54f022975ca3fe65` |
| 83 | `theorem` | [isField_of_isIntegral_of_isField](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/isfield-of-isintegral-of-isfield.md) | 625 | `result-track:a086e9fb32066408ca0ce02f6a5b7e6a6be4b7086e42c942932284e815a4eb50` |
| 84 | `theorem` | [Algebra.IsIntegral.isField_iff_isField](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-isintegral-isfield-iff-isfield.md) | 630 | `result-track:46f4666eec29396a43b5c88d26c9e7aa7c5ba811e9bf43eb876a9284a07faa60` |
| 85 | `theorem` | [Ideal.IsMaximal.ne_bot_of_isIntegral_int](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/ideal-ismaximal-ne-bot-of-isintegral-int.md) | 634 | `result-track:87d65c923e6dde2c603b0f6f516eed52bc300aa6f30c2a03ed057474876d907a` |
| 86 | `theorem` | [Algebra.ker_algebraMap_isMaximal_of_isIntegral](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/algebra-ker-algebramap-ismaximal-of-isintegral.md) | 640 | `result-track:6721d001f0a86e779c9fadf0634175287a5f50fc387199ed2f7d7754d0457848` |
| 87 | `theorem` | [integralClosure_idem](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/integralclosure-idem.md) | 649 | `result-track:f13ada1b083b93c9df91671860b7c24d032944f1914c2d0d268157fe24e0ff65` |
| 88 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/instance-source-edition-4.md) | 659 | `declaration-track:6c5de67c24a37508fb40d486dc225f1b1d1010fd4b4086736c7a2ef7a2d3f547` |
| 89 | `theorem` | [roots_mem_integralClosure](../../../../CommutativeAlgebra/IsIntegralClosureBasicPublic.lean/declarations/roots-mem-integralclosure.md) | 662 | `result-track:91a042ae3f41cde4bc48788950841fc80ca3c84f2700a78c3807c56027bfd338` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=45e5c33c7562690140309e3133d9b45727ad36bb0a3620303b25c398bc633893 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant93c72646554b01f2e8ae6657a656b07e0b6aa6b9c792e7d0d3cef0de5dbc653e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
