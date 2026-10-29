# Verification target: Unitization Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c",
  "lexical_observation_count": 139,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e90b80b9e5653c4a47f6423fc8a2b325d68fb7c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean.json)

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
| 1 | `structure` | [Unitization](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/unitization.md) | 68 | `declaration-track:db55b54ffbc018e5b74b352c647da93a7049f206a3c6921597527635c407a011` |
| 2 | `def` | [Unitization.delabMk](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/unitization-delabmk.md) | 76 | `declaration-track:c3ada0d92ef80e6d93ba3726aecbf8df65df79fccbae4708b75d45e5ecb33d11` |
| 3 | `lemma` | [mk_toProd](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/mk-toprod.md) | 86 | `result-track:71bed8caeb77f5634411d59a19ff0650ab818d71d110c75da2a110d5a02e82ed` |
| 4 | `lemma` | [toProd_mk](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-mk.md) | 87 | `result-track:47495ef1226f1e9a903de353b72a3c654af8c5b74cbdd47e2d6d69ac78c49e7f` |
| 5 | `def` | [equiv](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/equiv.md) | 91 | `declaration-track:0f0a6d4998780ceef2011a53fa10cf2c5c94c7a68e5ba88f52af40e0f277babf` |
| 6 | `lemma` | [toProd_injective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-injective.md) | 97 | `result-track:02ae4d1e6f6eec6ca3c592883201b29389787f188e130585f1b60749f5ccb190` |
| 7 | `lemma` | [toProd_surjective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-surjective.md) | 100 | `result-track:987c330453e64b92df720dba3cf6cf16a16763bf119a08253d833371aeb3e4d9` |
| 8 | `lemma` | [toProd_bijective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-bijective.md) | 103 | `result-track:e546dc6bfe850018733937946b1bd99f1123c48c607133f0f0e9988aff462d8d` |
| 9 | `lemma` | [mk_injective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/mk-injective.md) | 106 | `result-track:bb76929db3ee011bcf87d78529b36fe1df695c34eb0cb6b92b871aea600e094b` |
| 10 | `lemma` | [mk_surjective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/mk-surjective.md) | 109 | `result-track:392176816395c7fcb6527514319d00a9a24f7830933e3ec9387484d4440dceba` |
| 11 | `lemma` | [mk_bijective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/mk-bijective.md) | 112 | `result-track:26a7ae83dfeb1ba512e9a76dca8a84b8a79a84edd6c19f01d22356c775aa1dc8` |
| 12 | `lemma` | [toProd_inj_iff](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-inj-iff.md) | 116 | `result-track:881d4a3dd15d1860cbbfeade7a04cb1a516eea92711a915c90ec81fab7c65e1d` |
| 13 | `def` | [inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl.md) | 120 | `declaration-track:bf07fc4573018e9ca6388f0aa7499bc580c1f28c5401a923efa70d3d4f593573` |
| 14 | `def` | [inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr.md) | 125 | `declaration-track:ec3e978837045a7a1dc1a7c6b108d49cc27f9648d3cfc36aa7f268fd3522cdf0` |
| 15 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instance.md) | 128 | `declaration-track:75dd1dc86e4ede2d95497663f1ee1e5e9fca6e6d979c15687c635bae2fade679` |
| 16 | `theorem` | [fst_inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-inl.md) | 136 | `result-track:2a770bc1e4f23a0c4e5b0110caac873d8d965af60d99696580f8cb4bb1503f93` |
| 17 | `theorem` | [snd_inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-inl.md) | 140 | `result-track:7a83233cbe6547046e22b3da28c4689f893bf94af7d4fb033225eec5a0fd8f9c` |
| 18 | `theorem` | [fst_inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-inr.md) | 150 | `result-track:98a54d68c378f859db2ece7164da363382f8bb41086f04c24e67dad9df852633` |
| 19 | `theorem` | [snd_inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-inr.md) | 154 | `result-track:2a21675ab7fbb2106785d5a76ffca79c0a73c2f7f0baa9c70586f17392523f7b` |
| 20 | `theorem` | [inl_injective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-injective.md) | 159 | `result-track:72e0300c3cbb1e478ab3b99f73ebdfb1f0bf959465bc41052ea641db99983a0b` |
| 21 | `theorem` | [inr_injective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-injective.md) | 162 | `result-track:9c23417d94266b6e820615790da0a45ff8aa3ccfd61483c19f166cb47b450144` |
| 22 | `theorem` | [inr_inj](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-inj.md) | 165 | `result-track:56d4569d34e94eb2f5d05fb7113afecb0522f30baed238ed69390febf20a7286` |
| 23 | `theorem` | [inl_inj](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-inj.md) | 168 | `result-track:49b4fc4d2131f0c6ee8fec4e7e8d2d3bd211de26898c469895d5a8f01325e8bb` |
| 24 | `instance` | [instNontrivialLeft](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instnontrivialleft.md) | 172 | `declaration-track:545efd5a54585c1a3db332a391a6b9055e8e8abd954b39b657894108b2b2c0e6` |
| 25 | `instance` | [instNontrivialRight](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instnontrivialright.md) | 176 | `declaration-track:38b84847626201bf3010144351f1b9767796545138c8ed24dae73e5e4a2f3be4` |
| 26 | `instance` | [instCanLift](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instcanlift.md) | 191 | `declaration-track:6dbdc6fd6c2b81b808205f9ac160acbbb719b93c90a984a620c3014640b81bd0` |
| 27 | `instance` | [instInhabited](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instinhabited.md) | 194 | `declaration-track:5ca712d209bc8711c8fff1d643673d5936316e21808b9a7c41acad1c95e68023` |
| 28 | `instance` | [instZero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instzero.md) | 197 | `declaration-track:f1cd8fd0bbe3ea4c29cb65d6908d31d41ba96ad5f6ad3cfa99f96f932da7a2f6` |
| 29 | `instance` | [instAdd](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instadd.md) | 200 | `declaration-track:dd779dcf7fcfe46178dc2ec9e66ca539dc5481de4854095bad737d3b6a3fadd2` |
| 30 | `instance` | [instSub](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instsub.md) | 203 | `declaration-track:cbfd69cd3c17a9bf710373bca0fab3c0d1e908cff1c4db51bce7144286847326` |
| 31 | `instance` | [instNeg](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instneg.md) | 206 | `declaration-track:78c9c1b2b764786cd2551e51b114d741dc44557552f97a381b8998ec7e59b437` |
| 32 | `instance` | [instSMul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instsmul.md) | 209 | `declaration-track:88a0adbb4661d4db85fb77478927c83d1c8ac1e29eb9b864eb97ac32ad730716` |
| 33 | `instance` | [instAddSemigroup](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddsemigroup.md) | 212 | `declaration-track:cdd914c7af15c1f82fe5cd9c5351a3aa3290aca792b6dfaff1c73277c4378763` |
| 34 | `instance` | [instAddZeroClass](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddzeroclass.md) | 215 | `declaration-track:96b7dbe4d7dbefdfaf130aa2369d252100a155f13527b3011c47ba50ab0b1860` |
| 35 | `instance` | [instAddMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddmonoid.md) | 218 | `declaration-track:49b6bd58abdbd2bdb047129d4a5d2ff46094a9294ef787ab9df82d8a142137d6` |
| 36 | `instance` | [instAddGroup](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddgroup.md) | 221 | `declaration-track:7e05e14ba99baebbb79906e48ba36fa1e137ecf1f0658f2f4702e17c27a8c457` |
| 37 | `instance` | [instAddCommSemigroup](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddcommsemigroup.md) | 224 | `declaration-track:3c14561f01ae79ce978fd6599a7bc2af3265c2ed41393221a34ca7e390b6e46a` |
| 38 | `instance` | [instAddCommMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddcommmonoid.md) | 228 | `declaration-track:6652d15a30484f9dad191311fa0c7494da8b93ba35b01614884b0b4eb276df4a` |
| 39 | `instance` | [instAddCommGroup](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instaddcommgroup.md) | 231 | `declaration-track:378af90ab77a1056e15e9fa87451e2b7650667f15de7448cc2a498027aa1131c` |
| 40 | `theorem` | [toProd_zero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-zero.md) | 235 | `result-track:da880c6db0296c6464ab59f99c97c7c6f15a59f393c92d83bc30031e3c383dd5` |
| 41 | `theorem` | [toProd_add](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-add.md) | 239 | `result-track:db26d88b9ef721fe20485ff56d5c90e268ba8694b6c26b7a1d568200835234f1` |
| 42 | `theorem` | [toProd_neg](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-neg.md) | 244 | `result-track:5384d3d1654450bc0cb031336df61635b8862e97940d1c7009cedcc7568e0aa3` |
| 43 | `theorem` | [toProd_smul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toprod-smul.md) | 248 | `result-track:2d04d0491b7e7383be80ddb6682e9880ac521f70b23538868536312f319699ff` |
| 44 | `instance` | [instIsScalarTower](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instisscalartower.md) | 252 | `declaration-track:b344b02575c87e6f3482ac31150db3cdb4637384a960992f9374bf24de1a7e32` |
| 45 | `instance` | [instSMulCommClass](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instsmulcommclass.md) | 256 | `declaration-track:c5c7a8a702ac21e7637ca6e2e5c3d719cf7cd25388b228e5d0ecf2443d9e2693` |
| 46 | `instance` | [instIsCentralScalar](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instiscentralscalar.md) | 260 | `declaration-track:00cf6948b9b4b3e393f09700c0e69577420ff03154285bd42dc8e8112aa5d250` |
| 47 | `instance` | [instMulAction](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instmulaction.md) | 264 | `declaration-track:c89b9669a0babe5a794bf75c2183f0076a6868b0ae313dead9fe705aad0af949` |
| 48 | `def` | [addEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/addequiv.md) | 270 | `declaration-track:a38c58580882aad62cb26a34151d4668418a145a98d45253dbbc29fd95a1f9f2` |
| 49 | `instance` | [instDistribMulAction](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instdistribmulaction.md) | 274 | `declaration-track:1b833994888f2705cc8e707d7626fbbe9586ab0b82ea144fb564dfb0270e530c` |
| 50 | `instance` | [instModule](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instmodule.md) | 278 | `declaration-track:91ff68f2338ccdcf2a649900119d8340e4bfc075373d315f013138786b649cf7` |
| 51 | `lemma` | [toEquiv_addEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toequiv-addequiv.md) | 283 | `result-track:fe8a6219f26cd9feba828bb05d4ab6095f4867252006b643b2ae8cc6a8dc12b5` |
| 52 | `def` | [linearEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/linearequiv.md) | 289 | `declaration-track:4d79b491ac2badfbaecb279c693b664cf629c83e5ec3fcbb939ac63c94804b54` |
| 53 | `lemma` | [toAddEquiv_linearEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/toaddequiv-linearequiv.md) | 295 | `result-track:562bc5c6076a6be6f4897a7d3371c01ed0d3d9196c3f9c842d84b8bd5373357d` |
| 54 | `theorem` | [fst_zero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-zero.md) | 300 | `result-track:506d8c4498505b8fc394d1d7f0694f2aa9f03fac8a5b5401cf1e00a246730b3a` |
| 55 | `theorem` | [snd_zero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-zero.md) | 304 | `result-track:c81e53830f71dabc6c58cfdd1eb531bc88fb7ef73fa2c41149d3a035c6e0fa03` |
| 56 | `theorem` | [fst_add](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-add.md) | 308 | `result-track:dd46b53e0a26f4b80c7f5123388a412483b98e3a6969fcec99cfd13545e6cb99` |
| 57 | `theorem` | [snd_add](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-add.md) | 312 | `result-track:70d5738cd15165b1329ecca50ad33bb794011ebd2c0c0cd403f181cfbaa35e21` |
| 58 | `theorem` | [fst_neg](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-neg.md) | 316 | `result-track:f78da95e0e23697f9364c8d00230e9d8684f493cad68306f3b3c3babe00148d3` |
| 59 | `theorem` | [snd_neg](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-neg.md) | 320 | `result-track:307a16a8556d26384cce87fb0c259f1cfbd7c9fc35c7bc8dba7fdcbc94044a28` |
| 60 | `theorem` | [fst_smul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-smul.md) | 324 | `result-track:40e81766fe4a0b34a01e7eb365ca988e7fe728c302801cf1d4c3d3462bb3dc14` |
| 61 | `theorem` | [snd_smul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-smul.md) | 328 | `result-track:d621320b30f9224875dd0fcfe24a6d561ae899125c76f4dc2b812ee6e5a0db29` |
| 62 | `theorem` | [inl_zero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-zero.md) | 336 | `result-track:f56618c0cca940078eac175382df19d9c1f1f89478a6614a89cda1ae635b71fe` |
| 63 | `theorem` | [inl_add](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-add.md) | 340 | `result-track:43b164a106ca33c21be4c03b06e23a4c3fa0df2c23ea6dc38a33fa00e4f57cdb` |
| 64 | `theorem` | [inl_neg](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-neg.md) | 345 | `result-track:76f7df7f2c6901ec6ff40e67b6c10c520361bcee8c9c99687a9b7430f4cce6c7` |
| 65 | `theorem` | [inl_sub](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-sub.md) | 349 | `result-track:b3ec9817ea54302d87dfa699d1bf5dd7c0880e73a58206c6982eaf8e672c01c5` |
| 66 | `theorem` | [inl_smul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-smul.md) | 354 | `result-track:5f45a11e3cc12a604755c10f55a72500b9cfa074a66d81010aff41fb4c3b2883` |
| 67 | `theorem` | [inr_zero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-zero.md) | 365 | `result-track:78e87b13367091b6a52431f37a65d27e3749b9ccb53615a54d74e2ce406b808e` |
| 68 | `theorem` | [inr_add](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-add.md) | 369 | `result-track:28661b4d8e8ad02f137273b37065dd6dd55e0e961294c35345a991ed13010139` |
| 69 | `theorem` | [inr_neg](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-neg.md) | 373 | `result-track:1d6339a368b019ecbfac5240b2882ff6671c1a9795654cfb83a6584c23b2f9ae` |
| 70 | `theorem` | [inr_sub](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-sub.md) | 377 | `result-track:394ee48fd6b37df1ed9bac4af037d47901a9f2237faf58a7a9012c0b8b33e9b4` |
| 71 | `theorem` | [inr_smul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-smul.md) | 381 | `result-track:d4927036b2e746de68ca7e8ee33b054fafbfb2b061af084227962844c832bf1b` |
| 72 | `theorem` | [inl_fst_add_inr_snd_eq](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-fst-add-inr-snd-eq.md) | 387 | `result-track:29c9351ca0d287942390b4f04707a0ca4785ce6882659b2d08c858c50aea925d` |
| 73 | `theorem` | [ind](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/ind.md) | 396 | `result-track:0c3afbe35f43b06285d514e7e8ab53a9c655bd8b5c3010f38ec57cf001499605` |
| 74 | `theorem` | [linearMap_ext](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/linearmap-ext.md) | 401 | `result-track:70e4e398abc87d55968839eaa653fcd55e3c21f624aa8e528598f5d539295b71` |
| 75 | `def` | [inrHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inrhom.md) | 412 | `declaration-track:fe54de93b33ddd8a4c2fa912b5b455523edfcdd0e2ff604739305327ec0bfb59` |
| 76 | `lemma` | [inrHom_injective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inrhom-injective.md) | 418 | `result-track:c87285aa645e3ce456d8d80778f3ced843b180a13808510c9e049f61707bb3c0` |
| 77 | `def` | [sndHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/sndhom.md) | 423 | `declaration-track:8efc025dc4378b7139e2f198d922cd8fef6d87ea605b3e4019233c64957be892` |
| 78 | `instance` | [instOne](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instone.md) | 437 | `declaration-track:c5beb121f651b401a2a894a14606820c248582a5d1e51e897be0a0cebe1dcebb` |
| 79 | `instance` | [instMul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instmul.md) | 440 | `declaration-track:00d66cca821d2853ef9a73b9a58495521b780d434168411ec3029688f21fb269` |
| 80 | `theorem` | [fst_one](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-one.md) | 444 | `result-track:13b24d05193eec51568bc6ffdbe125de229aff407816bf912105c581b55ad582` |
| 81 | `theorem` | [snd_one](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-one.md) | 448 | `result-track:a09f4334ffce2ee944da04ac98a3bf1f80fe8f8eb99834219d22e745e235e9ef` |
| 82 | `theorem` | [fst_mul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-mul.md) | 452 | `result-track:965b893b8a4ebf7d7639693d357e72f2f662cdbc8e0bf791c19deb93a2888c87` |
| 83 | `theorem` | [snd_mul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-mul.md) | 457 | `result-track:0c8e62cb124281c4dfac5f3aa57b0655ee343a6610f2c61a33ce94890332dd46` |
| 84 | `theorem` | [inl_one](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-one.md) | 466 | `result-track:bdd9e2fbffb68308d971509de714900ba14888c0d32acb9c46e878bfefb3f123` |
| 85 | `theorem` | [inl_mul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-mul.md) | 470 | `result-track:c3b85a8873f2f194cc4e77f403faaccf4e65bfd3ccb4320d736668efaca073f3` |
| 86 | `theorem` | [inl_mul_inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-mul-inl.md) | 474 | `result-track:807a3732fd18ef48b657912cba85e2cec6f5718a8cd312c8b3c90511c71571ee` |
| 87 | `theorem` | [inr_mul](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-mul.md) | 485 | `result-track:fd442c41ac922c27d93e446da2e8d650554a4ee02ecbba084acc22e6519809d5` |
| 88 | `theorem` | [inl_mul_inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-mul-inr.md) | 492 | `result-track:98b099c1e1c070d82326610ceeda4135277f44c19ab4b58d0767db7be88ebb6e` |
| 89 | `theorem` | [inr_mul_inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-mul-inl.md) | 497 | `result-track:bc26fc10049e00294ffb2871daf329be3ae88bc8834aaab02da7c517968e224d` |
| 90 | `instance` | [instMulOneClass](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instmuloneclass.md) | 501 | `declaration-track:f3b79fea28086d698eec4b9594971aed7986df85131f037fa4406b9ccc216eee` |
| 91 | `instance` | [instNonAssocSemiring](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instnonassocsemiring.md) | 508 | `declaration-track:bdbf77ccdc1b8c494e7c93258404e0e1d0db853a78fab3b923b2ee5b4d253cb1` |
| 92 | `instance` | [instMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instmonoid.md) | 522 | `declaration-track:86ce1450ec9d8bc4ce02092b49665d3f49d2fd8721114175a5dc4212ffbba221` |
| 93 | `instance` | [instCommMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instcommmonoid.md) | 531 | `declaration-track:aef98169b150f89b4e88d91f668116d558310257274c412336d79d6185a9a586` |
| 94 | `instance` | [instSemiring](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instsemiring.md) | 537 | `declaration-track:d9926e4d85625bad50b4358eb1d6a2075bc1a0beb5631682ad4a5f059ddeb29a` |
| 95 | `instance` | [instCommSemiring](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instcommsemiring.md) | 542 | `declaration-track:672c5e8d3af804f1a56a070eae10a1eab00224d0d8588e8a8a159b54f5e82d4d` |
| 96 | `instance` | [instNonAssocRing](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instnonassocring.md) | 547 | `declaration-track:16841f7382f5846d1fa5379d82e622d08ecba87c393dab13a494100170e4b66b` |
| 97 | `instance` | [instRing](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instring.md) | 552 | `declaration-track:9232ef2d32a792b4249629a887071c7b3faf954d6135a8798d51011fd7e62b1a` |
| 98 | `instance` | [instCommRing](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instcommring.md) | 557 | `declaration-track:b8e6d4898561e73f7ae9b862ce207fc63f76afcdac6dc1a6236389ede0ad078a` |
| 99 | `def` | [inlRingHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inlringhom.md) | 566 | `declaration-track:1b04e2e95ea79eb01596bf16d2171ed79091fbf70ca669de4d15ef11925effac` |
| 100 | `instance` | [instStar](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inststar.md) | 582 | `declaration-track:e054ac1d0b4f63267534ccfc759f7a6c13986ed0fe605af1406c89ffb099a259` |
| 101 | `theorem` | [fst_star](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fst-star.md) | 586 | `result-track:bbe717dff8cf80f7ec46e68a4c44431146dbf0f7d295540cecc4d72f887bbd3d` |
| 102 | `theorem` | [snd_star](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/snd-star.md) | 590 | `result-track:7b74465fbd6aa63b143bafb358ef9d4d0b9f1491cf607d69fd7073b7af010d5d` |
| 103 | `theorem` | [inl_star](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inl-star.md) | 594 | `result-track:057b9781321e82dab6a1d759bf806afec5fe0f7709eba20a139735d05de4b972` |
| 104 | `theorem` | [inr_star](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inr-star.md) | 599 | `result-track:68e0799e8c35d6c4b8441524152b08d87d225d71eabcfc6314e4cec84d78e499` |
| 105 | `instance` | [instStarAddMonoid](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inststaraddmonoid.md) | 603 | `declaration-track:7e84a7f1becf921f04c12e5c2adb1725d23f37c11a95281ad17c274036cee53c` |
| 106 | `instance` | [instStarModule](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inststarmodule.md) | 608 | `declaration-track:ee7ec5ac7b63a8c6518b9b0fedbc87bba26a7873ec35005192aabceea575e5e5` |
| 107 | `instance` | [instStarRing](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inststarring.md) | 612 | `declaration-track:49fb2c5792aabed5e49875ebc2f3bb23844c3f1233899ee1ea361fe0066faa7c` |
| 108 | `instance` | [instAlgebra](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instalgebra.md) | 631 | `declaration-track:221dbb564bc1485d7a31884d0053beb022849c0252e1b5749370db26fd201fb9` |
| 109 | `theorem` | [algebraMap_eq_inl_comp](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/algebramap-eq-inl-comp.md) | 645 | `result-track:0323ae8443bcb5c1af1711d645684b49ea32ea364f501ae2fcd935f7e4407d5a` |
| 110 | `theorem` | [algebraMap_eq_inlRingHom_comp](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/algebramap-eq-inlringhom-comp.md) | 648 | `result-track:bcd039c77d2ee9dadda38b77082bdd0d576b55a1c74ab44871c089b64a481f03` |
| 111 | `theorem` | [algebraMap_eq_inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/algebramap-eq-inl.md) | 652 | `result-track:74269c9eaef153621088edb9c8f933691792e99d799961b00e546d15edf0f8bb` |
| 112 | `theorem` | [algebraMap_eq_inlRingHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/algebramap-eq-inlringhom.md) | 655 | `result-track:8fdad49a664747142822aa379711b8048a3a8f8fed95371ead513d6b4ec3149f` |
| 113 | `def` | [fstHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/fsthom.md) | 660 | `declaration-track:83df818a2e3e67182d9853a99907d0fc8e987165dfb1f20066e8d59142fc1a41` |
| 114 | `def` | [inrNonUnitalAlgHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inrnonunitalalghom.md) | 675 | `declaration-track:b5771c87db563f08bcde58bb8052b7e3d3f6b3e71bb3396f771c8c2af6f069a7` |
| 115 | `def` | [inrNonUnitalStarAlgHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inrnonunitalstaralghom.md) | 686 | `declaration-track:24ed2f237fdfc3a2003d22521b758bd1f077d9d9b714a83da99b6c04185226a1` |
| 116 | `def` | [inrRangeEquiv](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/inrrangeequiv.md) | 695 | `declaration-track:bb4dddbcfaf705344df73b833961d3bfe91c9fb3c5daefbd0adff6a1fa037d6c` |
| 117 | `theorem` | [algHom_ext](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/alghom-ext.md) | 708 | `result-track:5840392d0dfdc25aa93cd35ec777d3c264aefbcec1e7842f5de4f0bd8d36145a` |
| 118 | `lemma` | [algHom_ext''](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/alghom-ext-source-edition-3.md) | 717 | `result-track:8a3040e80d7f777318be7cc629b7d209fae902eb51fc135c8652175b4e7f31a1` |
| 119 | `theorem` | [algHom_ext'](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/alghom-ext-source-edition-2.md) | 724 | `result-track:879a9e75196523784c6cf7b61a3a5300f4af11969d9c65904c19f8730eac871c` |
| 120 | `def` | [_root_.NonUnitalAlgHom.toAlgHom](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/root-nonunitalalghom-toalghom.md) | 736 | `declaration-track:857d034dc2b7c21c6f9392066b3f3d48925d4485b66d073da05eea38b9733d96` |
| 121 | `def` | [lift](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/lift.md) | 766 | `declaration-track:be91467d2e256e760caf5d934ad542a1247e69efe2c7d8bb0827b067b1632ee2` |
| 122 | `theorem` | [lift_symm_apply_apply](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/lift-symm-apply-apply.md) | 772 | `result-track:3d0e22f1804a5ff89437834073b24e10677a92b42d9f395f13b14e2692694e34` |
| 123 | `lemma` | [_root_.NonUnitalAlgHom.toAlgHom_zero](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/root-nonunitalalghom-toalghom-zero.md) | 777 | `result-track:7f99798faff2e658f0db08e8e2b09561f5fdfc6202e814699119e5dd7530b1a2` |
| 124 | `theorem` | [starAlgHom_ext](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/staralghom-ext.md) | 792 | `result-track:42af057dbb576993e8f625f13d87e9ee7fcd75a6b716e4cbeed55baea162ec41` |
| 125 | `def` | [starLift](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starlift.md) | 803 | `declaration-track:59df0b93ac120cd238bbb083ce6d32e9177e60fc22fbdc80e69a24eb3fae768c` |
| 126 | `theorem` | [starLift_symm_apply_apply](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starlift-symm-apply-apply.md) | 812 | `result-track:8e3b03f23319ec9dca60aa1338c0c35a6ee52ef619c7f9992e22f4755ef3db00` |
| 127 | `def` | [starMap](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap.md) | 833 | `declaration-track:620b5fdc60a35ed1b9e614331dfdcc0498a3f90990c3369329ebb40509562acb` |
| 128 | `lemma` | [starMap_inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap-inr.md) | 837 | `result-track:b6025db1912991d10eb30262d04592d4d0f0c4bac8435c1272313ad7d2f0b0ca` |
| 129 | `lemma` | [starMap_inl](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap-inl.md) | 842 | `result-track:81824424a59df0152b26d1327245ac5e8069d16e978f6e7eb1bcd57898bfa8c0` |
| 130 | `lemma` | [starMap_injective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap-injective.md) | 848 | `result-track:a8fe82aa34d92e79fb0dd0dbd9a9043af48b33ec9f00e4e0d19c350695261c82` |
| 131 | `lemma` | [starMap_surjective](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap-surjective.md) | 857 | `result-track:4a19cdc7fe0c9ff5f2c5fffe175896a341d8a2221e7e51cb8785a41ef1bad13c` |
| 132 | `lemma` | [starMap_comp](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap-comp.md) | 866 | `result-track:9e66ccb6d192f1f4127cb489c22ed084115dead13a1cd4fdaabd8cc43f651175` |
| 133 | `lemma` | [starMap_id](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/starmap-id.md) | 873 | `result-track:9530ce72759e9f249393cf5c26fc890d5be85785f555cc28ddeef531357c686a` |
| 134 | `lemma` | [isSelfAdjoint_inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/isselfadjoint-inr.md) | 885 | `result-track:62088617393d39f3fd5b0a5af1f2bc7ba7d52fa2b3df9862471e8c5d6f81b198` |
| 135 | `lemma` | [_root_.IsSelfAdjoint.inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/root-isselfadjoint-inr.md) | 891 | `result-track:7df52da401aa49bfef2804ca216aebe21ffb235f8b36c483021c1d06580e46d2` |
| 136 | `lemma` | [isStarNormal_inr](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/isstarnormal-inr.md) | 897 | `result-track:014e831b34eee494c815b9aefe994504ef2f0dae606326fbf1707ea40c58af8a` |
| 137 | `instance` | [instIsStarNormal](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/instisstarnormal.md) | 903 | `declaration-track:a712601a254a5d05bb734522754dfb3654e602cb980f8f2b8bf8027e981ba278` |
| 138 | `lemma` | [isIdempotentElem_inr_iff](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/isidempotentelem-inr-iff.md) | 910 | `result-track:166b863028f7069de7f42cae0a79b3eb20d8c2fa8693ef620daf66245f9c59b8` |
| 139 | `lemma` | [isStarProjection_inr_iff](../../../../AssociativeRingsAndAlgebras/UnitizationPublic.lean/declarations/isstarprojection-inr-iff.md) | 918 | `result-track:28f6de97b6ac1362c1428e2fff5f5d3217fd8027df205bb626805c5f17154ac7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=feeb8af9d11497719a3b5870d1ceaa8a6b34512724be719bb44aa726e6e87a4b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Unitization/Variant892c07ac61c73d4cd90d555a6b5bcbf1f1d4eb06f13994f18e361c401a09ffd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
