# Verification target: Graded Algebra Homogeneous Ideal Homogeneous Ideal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cea8bbf0a7101be5381a7b05e2e89d7659e1231d",
  "lexical_observation_count": 80,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/index.md) · [Full source](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cea8bbf0a7101be5381a7b05e2e89d7659e1231d`.

Source path: `GRWTSK/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Ideal.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Operations` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Ideal.IsHomogeneous](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous.md) | 63 | `declaration-track:76bc23d4b1c1f5146fe6f30e8756d06d0e6d4e40193aae1555a512e92795444e` |
| 2 | `structure` | [HomogeneousIdeal](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal.md) | 68 | `declaration-track:ff3c5270bb28eebd908582951b42ca80d6efa22bb74064483d6e1ea8415223f6` |
| 3 | `def` | [HomogeneousIdeal.toIdeal](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-toideal.md) | 75 | `declaration-track:e385f8d5d098a9cefbceaf548afb580099897edb9fff8083c78ead14f8565284` |
| 4 | `theorem` | [HomogeneousIdeal.isHomogeneous](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-ishomogeneous.md) | 79 | `result-track:0c51c86025525e8fc1885d4b07f3db20e519c7b920ba49e5e68d7f41dfd1e5ba` |
| 5 | `theorem` | [HomogeneousIdeal.toIdeal_injective](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-toideal-injective.md) | 83 | `result-track:e40735b14063d3d6bfb80f569fce01386042647634b9193619475c7917b09ec2` |
| 6 | `instance` | [HomogeneousIdeal.setLike](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-setlike.md) | 88 | `declaration-track:5ef14b84c054648b4f62d2208dc806b2f17610cae3130a48b2e15dd191135aeb` |
| 7 | `theorem` | [HomogeneousIdeal.ext](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-ext.md) | 94 | `result-track:c4f1f2de1def9bbc18a2781d77c1984300a4e0dfb079b313afec115fc9cc7454` |
| 8 | `theorem` | [HomogeneousIdeal.mem_iff](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-mem-iff.md) | 99 | `result-track:83231e9572af30e31c98eb25cec87ceefb92cc68172a41f9eb0c2dc5924183ba` |
| 9 | `def` | [Ideal.homogeneousCore'](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore.md) | 115 | `declaration-track:2b3a3d837674a653bc7d1ad2fbb26dd7e045302c79c2cc39c9c8d019ec34d2ed` |
| 10 | `theorem` | [Ideal.homogeneousCore'_mono](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-mono.md) | 119 | `result-track:5fd27b4de3ddb3a390dce56716ac3de2b690b2d8fcf5e72d3d59e4b9e5668aee` |
| 11 | `theorem` | [Ideal.homogeneousCore'_le](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-le.md) | 123 | `result-track:deb17bfda82662547188b0588a940c526056e82d3ca95aeb7476ef2aba56f99a` |
| 12 | `theorem` | [Ideal.isHomogeneous_iff_forall_subset](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-forall-subset.md) | 139 | `result-track:85677c22a65f3d8ba7dbf18dabc5748603f54a2c0da6c9f31ac7006a32feab2b` |
| 13 | `theorem` | [Ideal.isHomogeneous_iff_subset_iInter](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-subset-iinter.md) | 144 | `result-track:ff916db3546251b867703014acbc484030e56ac8faed535a4feb72d7f5cb253f` |
| 14 | `theorem` | [Ideal.mul_homogeneous_element_mem_of_mem](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-mul-homogeneous-element-mem-of-mem.md) | 149 | `result-track:618e406c742a480ad91cefc675afe17ed954a47721ffd774a3f3a65307ace03c` |
| 15 | `theorem` | [Ideal.homogeneous_span](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneous-span.md) | 164 | `result-track:eb4b94204b898eb6d18b1104249eae44a29a595dc8496ce9cfcf55f454c66879` |
| 16 | `def` | [Ideal.homogeneousCore](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-source-edition-2.md) | 183 | `declaration-track:8b34934a013c5609b53764a08be903691b33917fb720146cd97dcd5d3a0fcd56` |
| 17 | `theorem` | [Ideal.homogeneousCore_mono](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-mono-source-edition-2.md) | 188 | `result-track:b270e1f98eb91199f8be792e62a78dd0be4bb517cfed2424431d389fe127e26f` |
| 18 | `theorem` | [Ideal.toIdeal_homogeneousCore_le](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-toideal-homogeneouscore-le.md) | 192 | `result-track:5a4e63cade3398ce5c382ab268568792c4b6bd8bbec7ba898eae56fcb581ed72` |
| 19 | `theorem` | [Ideal.mem_homogeneousCore_of_homogeneous_of_mem](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-mem-homogeneouscore-of-homogeneous-of-mem.md) | 198 | `result-track:59578c9a218c8c83da520f71d502e69f964bfc84088c4c2a18faf8b17f44e4cf` |
| 20 | `theorem` | [Ideal.IsHomogeneous.toIdeal_homogeneousCore_eq_self](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-toideal-homogeneouscore-eq-self.md) | 203 | `result-track:64f29e68dfa01a3ede3a51a6c50875644d84006a673042919ebed669b9965c2b` |
| 21 | `theorem` | [HomogeneousIdeal.toIdeal_homogeneousCore_eq_self](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-toideal-homogeneouscore-eq-self.md) | 213 | `result-track:575f68a935e0c9b56febe3504c965bda6135b09c6256aeb7d9c87c6ce8b53836` |
| 22 | `theorem` | [Ideal.IsHomogeneous.iff_eq](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-eq.md) | 221 | `result-track:56dc0dfeef27ea524692f27869a56f4a191f3a88505144391ded51892ccdf3f0` |
| 23 | `theorem` | [Ideal.IsHomogeneous.iff_exists](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-iff-exists.md) | 225 | `result-track:8584025c254824776c01e38eca9e02ee2ba1dee95d1a4089350f927841649a7f` |
| 24 | `theorem` | [bot](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/bot.md) | 249 | `result-track:b9f1b2848894c691121e985134a619b1911b619511fde629d316d96425106dc4` |
| 25 | `theorem` | [top](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/top.md) | 255 | `result-track:3f3a745b6f736affd80b898bd827071339922c5f9f866531a43aa4ebd2d6c244` |
| 26 | `theorem` | [inf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/inf.md) | 260 | `result-track:f9e97212bc2cdcd77fb41a06b0ab12b7f9695231ac0feb999c8ee01bbac4c054` |
| 27 | `theorem` | [sup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/sup.md) | 265 | `result-track:eee28de8193012a237199b00d39cf434686fe7d7287d0d3b31c84777a8c70b65` |
| 28 | `theorem` | [iSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/isup-source-edition-2.md) | 274 | `result-track:f2b5bad5957f1b611389c0d422ac2035b3e3742b6c84a8ab9ab5201f28e6c56b` |
| 29 | `theorem` | [iInf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/iinf-source-edition-2.md) | 284 | `result-track:c61c537b55aa05c753f354f1ae0b488de31e13ddb919fae1147f5f9fb8773006` |
| 30 | `theorem` | [iSup₂](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/isup.md) | 291 | `result-track:93ae0050d65acab097c890bad7f107ff66dbecad7fcce45ce8eb7265b03c4fdf` |
| 31 | `theorem` | [iInf₂](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/iinf.md) | 296 | `result-track:82d1fdbb0619095534724c3c14af94c06240fba5fa4013679541dfc7c14780ac` |
| 32 | `theorem` | [sSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ssup.md) | 301 | `result-track:fea1e55f4e094fc011d63dc93ec2b8497ae6d22a21771efc0bd96e5a7b77cce0` |
| 33 | `theorem` | [sInf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/sinf.md) | 307 | `result-track:9d5754a84231c3f0c661c430c794cf923ad64774207c8d67f2e2a3fc9d39079f` |
| 34 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-9.md) | 319 | `declaration-track:c95c5c4ea6638fef247a2cb1fa71f15344d1a481b290210f71e0cc21d5db5330` |
| 35 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-7.md) | 322 | `declaration-track:626e77e1057f4d12670d66950caa8662713b940c86d8a2ebfe3c1a8e684575ad` |
| 36 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-8.md) | 325 | `declaration-track:8a7345fe60fed6144cff45294987861f1c5be0990562333af65697437a49215a` |
| 37 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-5.md) | 328 | `declaration-track:54931e05ae41c160ac6d241f87e45d5a12cd5837880b3295452776a36226a8bd` |
| 38 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-3.md) | 331 | `declaration-track:413a00debfa6f3b8e32a2acea73ff53ed5f83fff9b631f38e20259e099352409` |
| 39 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-2.md) | 334 | `declaration-track:2686076d2c2a89b6848619a6739e9a58473a66cf1a028c52d350ddf38f08e71f` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-6.md) | 337 | `declaration-track:5ea89e9ccf93322722501f10ef5356e1d6d709773d5c51f276a6536e8d8921bf` |
| 41 | `theorem` | [coe_top](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/coe-top.md) | 341 | `result-track:5c2c6c509cb3ce2b4f42e52441397aa63f2ad8b56513143c70cd9836e3fe900d` |
| 42 | `theorem` | [coe_bot](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/coe-bot.md) | 346 | `result-track:792663c125e52eea14a7010be31eb96d13de4c394fe7afb3e70ddd78871bd52d` |
| 43 | `theorem` | [coe_sup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/coe-sup.md) | 351 | `result-track:ef91d042d6400ea50580a70ed07ad6fb12e251e8488f1c640960d8368d00502e` |
| 44 | `theorem` | [coe_inf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/coe-inf.md) | 356 | `result-track:d284512b89e95889f1402594f4beafb1e3363e86e1de178e22a67e804589ee92` |
| 45 | `theorem` | [toIdeal_top](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-top.md) | 361 | `result-track:0558fac30642898ed71e6d022ac6e43c9e5cbbb65137386ada4b9a5ff85fc11d` |
| 46 | `theorem` | [toIdeal_bot](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-bot.md) | 366 | `result-track:7afd53d2095c3648e9b22ef250776a322cdf29d427ebef1c473ec797cd01c583` |
| 47 | `theorem` | [toIdeal_sup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-sup.md) | 371 | `result-track:a6072b9264b4a3811acb58280380f95fce2a6d32d6a763fd991223895c31b9fd` |
| 48 | `theorem` | [toIdeal_inf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-inf.md) | 376 | `result-track:f0b4d034869fd5f7390c3d1a38ded69b9007f616ead9996a527ea5c2ad1c45c2` |
| 49 | `theorem` | [toIdeal_sSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-ssup.md) | 381 | `result-track:e874008c7da61cdcda7ac51403c5ee0f74886b1fced37db60009bb9891e4d778` |
| 50 | `theorem` | [toIdeal_sInf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-sinf.md) | 386 | `result-track:f2f56623432e4fae88085370d374afdbbc550cedd623a6f39ff9255238d38c00` |
| 51 | `theorem` | [toIdeal_iSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-isup-source-edition-2.md) | 391 | `result-track:66de2c68ddfc03743574369dfa000790e004a628e8f0979a34bd66741e1b9edf` |
| 52 | `theorem` | [toIdeal_iInf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-iinf-source-edition-2.md) | 397 | `result-track:8048770d635d673386ae623b9409837e65029365fc741c58d2d90a67728f8390` |
| 53 | `theorem` | [toIdeal_iSup₂](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-isup.md) | 403 | `result-track:29854275abfc211b63f16440c1cb07728f66ac1e90f75ef60ea60f4a1d5f1645` |
| 54 | `theorem` | [toIdeal_iInf₂](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-iinf.md) | 409 | `result-track:12cfea2b9060b07647e37f70c333ad043866e9e6dc58a3639abc7097469680df` |
| 55 | `theorem` | [eq_top_iff](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/eq-top-iff.md) | 415 | `result-track:c2dee1189f847707b4442ba3fe6b20156f890707766df3a93c64a7227ce1f4d8` |
| 56 | `theorem` | [eq_bot_iff](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/eq-bot-iff.md) | 420 | `result-track:232ea2e6517215d4d007fe13b05ad6a98687512712fcfe0380450b2633ceba86` |
| 57 | `instance` | [completeLattice](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/completelattice.md) | 424 | `declaration-track:d99331d6982d0ecc2581e8df6894c56234d73f5345b5802e7a45c393df04c532` |
| 58 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-4.md) | 428 | `declaration-track:49c84c3f92e7891cac6453b6415fe7f6a9884542de742a1dcb41e7b93ffdd730` |
| 59 | `theorem` | [toIdeal_add](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/toideal-add.md) | 432 | `result-track:82d57d83be5338aca46461c496ebce0672e9f7365a0cebd435573d0471bc6913` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance.md) | 436 | `declaration-track:04b3a34769a38e60a1e0404dbdf480b7ce900f9920b0fc64385c1f8233384dbd` |
| 61 | `theorem` | [Ideal.IsHomogeneous.mul](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-mul.md) | 452 | `result-track:a8075f799c0280eed82336ed4d0363541d2702bd7ae8020be161eb85abd8e9a9` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/instance-source-edition-10.md) | 460 | `declaration-track:cc6300101fd467485921e259eec63cd1e5bc1124fd51e2367dea2e20628af478` |
| 63 | `theorem` | [HomogeneousIdeal.toIdeal_mul](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-toideal-mul.md) | 464 | `result-track:3e475a7ff229b0015404575a281c59f3767991a3b9f7cef8b180be56b636706a` |
| 64 | `theorem` | [Ideal.homogeneousCore.gc](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-gc.md) | 489 | `result-track:3f7352a83fa8534e57385b00c98fd1ac4a19d3c75b90fee443fb2f98a03b871d` |
| 65 | `def` | [Ideal.homogeneousCore.gi](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-gi.md) | 496 | `declaration-track:4c3e5844869d5fb3463a1c989917b150b949e66b2b19e1a9e63a9d40e233deec` |
| 66 | `theorem` | [Ideal.homogeneousCore_eq_sSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-eq-ssup.md) | 504 | `result-track:2b79a96f6803c29ac345ae39c418d391dec127a7c64e46ff81c27737946d0860` |
| 67 | `theorem` | [Ideal.homogeneousCore'_eq_sSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneouscore-eq-ssup-source-edition-2.md) | 509 | `result-track:359f1fe04ec18a1209dcb2beb70055f0aa76474139c2510cd77dbd72d43ebe00` |
| 68 | `def` | [Ideal.homogeneousHull](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneoushull.md) | 539 | `declaration-track:9f275cfdbd7187d2d579be316d2a1d193b890f013fa8d30aae01cef06ce2dca8` |
| 69 | `theorem` | [Ideal.le_toIdeal_homogeneousHull](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-le-toideal-homogeneoushull.md) | 546 | `result-track:742d446572c00089b6f9985aa06a641e0ee72e419290e97f9facdfc6bfbd8442` |
| 70 | `theorem` | [Ideal.homogeneousHull_mono](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneoushull-mono.md) | 557 | `result-track:1dd8cf730c5335972081d5dc03221b49df2b30fa04315c22284447ce0a2e5ea8` |
| 71 | `theorem` | [Ideal.IsHomogeneous.toIdeal_homogeneousHull_eq_self](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-ishomogeneous-toideal-homogeneoushull-eq-self.md) | 565 | `result-track:86702f8761fa83c227639a9e6ee0dfcee038aa1e0413dc0283232075c8b3163e` |
| 72 | `theorem` | [HomogeneousIdeal.homogeneousHull_toIdeal_eq_self](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-homogeneoushull-toideal-eq-self.md) | 574 | `result-track:f80bbbc0be8abe326f162590c7725e0d6e06dafb075a1ae8a1467ef7fc75ebec` |
| 73 | `theorem` | [Ideal.toIdeal_homogeneousHull_eq_iSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-toideal-homogeneoushull-eq-isup.md) | 581 | `result-track:938f5d938e1d388d47b011902d67d88f8cd21ed01f23a1088fdcb1e614012b69` |
| 74 | `theorem` | [Ideal.homogeneousHull_eq_iSup](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneoushull-eq-isup.md) | 590 | `result-track:bc4e526bd2cb5890393d76e753d7feef2957ba1d458bbc3453c449eee0e3e80f` |
| 75 | `theorem` | [Ideal.homogeneousHull.gc](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneoushull-gc.md) | 610 | `result-track:806160772d0a81355aefaf231c8ff0870779360757b78d31e3c2450f6874e882` |
| 76 | `def` | [Ideal.homogeneousHull.gi](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneoushull-gi.md) | 617 | `declaration-track:b20ab156dbb3e0a5ffbd6cb3d245483b8bdcd44f81eefd72674f90fbfc45efc9` |
| 77 | `theorem` | [Ideal.homogeneousHull_eq_sInf](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/ideal-homogeneoushull-eq-sinf.md) | 624 | `result-track:eb4659dc3662d8440d96f5ba48a0f46398c44e8202a0c824f128db45ccab4759` |
| 78 | `def` | [HomogeneousIdeal.irrelevant](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-irrelevant.md) | 653 | `declaration-track:947fe616cd88daf9a014dec0d232f81e3cb347494373bf748148030206137307` |
| 79 | `theorem` | [HomogeneousIdeal.mem_irrelevant_iff](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-mem-irrelevant-iff.md) | 662 | `result-track:287b8351e0016df4d32f3b74c4b75087b13b4380848502f956c4c21334bdfd4f` |
| 80 | `theorem` | [HomogeneousIdeal.toIdeal_irrelevant](../../../../CommutativeAlgebra/GradedAlgebraHomogeneousIdealHomogeneousIdeal.lean/declarations/homogeneousideal-toideal-irrelevant.md) | 668 | `result-track:595b97ff20c15eca290547af19e3ee1742a264ccdd86ed3cdf40b07d3957df58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44eeb0e35e7bf8721025b8cf0c714abcce41b4b6823e323c93300f9b531cc6e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean","GRWTSK/_verification/specifications/Algebra/HomogeneousIdeal/Variant6a71951e766479e4dea85be0afba8133196f87636a398e7cdb25c0c715b8a5d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
