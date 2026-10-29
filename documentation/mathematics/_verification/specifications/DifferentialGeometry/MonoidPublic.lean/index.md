# Verification target: Monoid Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b9686ee034b27560b364fc94453fa340a53cc13",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/MonoidPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/MonoidPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b9686ee034b27560b364fc94453fa340a53cc13`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean.json)

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
| 1 | `class` | [ContMDiffAdd](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffadd.md) | 51 | `declaration-track:0143f77ca2b7cc1d4a4bb011c17e74f54e671aec3d4bc7ed7b75686781348587` |
| 2 | `class` | [ContMDiffMul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffmul.md) | 65 | `declaration-track:fbae572684309f93606aefa611d06eb5f34109394b196ae0fa1de55fee9e67b8` |
| 3 | `theorem` | [ContMDiffMul.of_le](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffmul-of-le.md) | 81 | `result-track:b58dd38f819e0f991aff97a193600174a290ad943a9892fb0f9896701ff5da65` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-9.md) | 87 | `declaration-track:eb3d98060cad99af39edf5bdbd2d896240d1aaaab620d6181f0b3404cd0d738f` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance.md) | 91 | `declaration-track:02119e48630a15b5367c73025803802230a67514b3b333200bfd035c3e370f02` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-2.md) | 95 | `declaration-track:04c1c2f2069a970f00bbbb93f4711df0c4d2cc126c86dad9e70139507460b7fe` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-6.md) | 101 | `declaration-track:55cdcbeefffa1b54ead518c0cd3c812c352c3bc8c2a4ac27ab84b9f0a26a5691` |
| 8 | `theorem` | [contMDiff_mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-mul-source-edition-2.md) | 109 | `result-track:a58206cc30dbc79f8c5b33adaccc925a1c5584891e794a5625e7ba6449adca35` |
| 9 | `theorem` | [continuousMul_of_contMDiffMul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/continuousmul-of-contmdiffmul.md) | 117 | `result-track:6b1a66add42332c521932d873009116f66223eb25d30376cc6154dbddaa12eef` |
| 10 | `theorem` | [ContMDiffWithinAt.mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-mul.md) | 127 | `result-track:303b1d27ef1175b644709cc84ffe20e785549368064de406448ead48fc2eac43` |
| 11 | `theorem` | [ContMDiffAt.mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-mul.md) | 132 | `result-track:1a203d282a3f96489be307b09f0dd2c79feadf92074d9ce58541961fcd3ec9ee` |
| 12 | `theorem` | [ContMDiffOn.mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffon-mul.md) | 136 | `result-track:f50d57880f268b5b97b3868710a23681258c694f4424032a666e4c2d188b2e15` |
| 13 | `theorem` | [ContMDiff.mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-mul.md) | 140 | `result-track:414b03645e470b44f7138f7839dc1f9e5870a589c0065955f912ba2d8b6ac1c7` |
| 14 | `theorem` | [contMDiff_mul_left](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-mul-left.md) | 144 | `result-track:22b272b5ef1ed7a2fe453b35986a60edd83d4751bc68423d602653df77a1ae5b` |
| 15 | `theorem` | [contMDiffAt_mul_left](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-mul-left.md) | 148 | `result-track:c5b7a3d356b90b118dabacac7e339d7ebf3b64721cc06170341194b5f58ec562` |
| 16 | `theorem` | [contMDiff_mul_right](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-mul-right.md) | 152 | `result-track:ffa1517430d3a7085a8c50809d1f1dd5ddd232852119614619ca601fac66f85f` |
| 17 | `theorem` | [contMDiffAt_mul_right](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-mul-right.md) | 156 | `result-track:ac0cad2e4bdf80baff8b25762db7d87a34514efd0cb7c455a69c9fd806397e3a` |
| 18 | `theorem` | [mdifferentiable_mul_left](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/mdifferentiable-mul-left.md) | 166 | `result-track:96d1006d1fd102f7d3391f0f71a507b8c40129aa255d21832984c13d181f8184` |
| 19 | `theorem` | [mdifferentiableAt_mul_left](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/mdifferentiableat-mul-left.md) | 170 | `result-track:ba7a2c27c439d16da0f7ee2a0dd1bd1b56277e1b1277fc77594fee67b8b48c73` |
| 20 | `theorem` | [mdifferentiable_mul_right](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/mdifferentiable-mul-right.md) | 174 | `result-track:14602b89c8878f8922fc1489fcdbcd6992b5163f74d44c60fad3d88282fb0a91` |
| 21 | `theorem` | [mdifferentiableAt_mul_right](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/mdifferentiableat-mul-right.md) | 178 | `result-track:8de6c055b170dc70b457428b8b226409c690ad9634dcd842a53c5750762f395f` |
| 22 | `def` | [smoothLeftMul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/smoothleftmul.md) | 190 | `declaration-track:a78ef3a9185e0e10ef7b622b7633828d5bfe9d8dbc344fde6792624f26c49a48` |
| 23 | `def` | [smoothRightMul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/smoothrightmul.md) | 197 | `declaration-track:6c7cfb46ec637876060dfd00d2eeffc6efcc17878de22060f3447b38a0ded8c0` |
| 24 | `theorem` | [L_apply](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/l-apply.md) | 209 | `result-track:2c5fd95ff41a1a13e3ed0b187d8c6aa924ab14a85d5a009313020f266dab976a` |
| 25 | `theorem` | [R_apply](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/r-apply.md) | 213 | `result-track:2888952fd96635f51750404cf42890ce8a7c1bdd4b825c77900734c13e47f696` |
| 26 | `theorem` | [L_mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/l-mul.md) | 217 | `result-track:f33c1be16949229e492ed23a7761b28dfe0efd3448d19b5de9a57212124b001a` |
| 27 | `theorem` | [R_mul](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/r-mul.md) | 223 | `result-track:299bdd2cfb2cca61865f3707b317e5e4a89b31652893a2cea2b0b7569374c3dc` |
| 28 | `theorem` | [smoothLeftMul_one](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/smoothleftmul-one.md) | 233 | `result-track:efc266d6f3965bdb66ce51ea5a7e3a478845bc43c14a7d781d80edaee2203bad` |
| 29 | `theorem` | [smoothRightMul_one](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/smoothrightmul-one.md) | 236 | `result-track:7661caa38f5ef5daa220e624d0d27c1e872c4f874cccf8ba0e3a90eb9477cf25` |
| 30 | `instance` | [ContMDiffMul.prod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffmul-prod.md) | 243 | `declaration-track:086544ca77e29234b3991a59c36a558b3139b9f00af8ad8b193abb7845a6e4c4` |
| 31 | `theorem` | [contMDiff_pow](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-pow-source-edition-2.md) | 266 | `result-track:e1b95a92bc4d00008db603ff6e8d1b693c841cc04c0f67eb880e00ed717cc656` |
| 32 | `structure` | [ContMDiffAddMonoidMorphism](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffaddmonoidmorphism.md) | 271 | `declaration-track:aba2438592454948353a75e2d9830324e2386df61ceca0909ee1f36ef3b48f02` |
| 33 | `structure` | [ContMDiffMonoidMorphism](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffmonoidmorphism.md) | 279 | `declaration-track:ee6748b06e0e2cc835b41333b4ee475f95762e1a619b707f0b4494a40a837f5d` |
| 34 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-5.md) | 286 | `declaration-track:3130a75cd5c74f6228a6dff6c4c79a7f5eddbd5906e8d25349794ce1d36a29a2` |
| 35 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-4.md) | 291 | `declaration-track:2167d2ff2a89b1dc3862125b58e0335cec414fa26e29f4cb386224a8a3fce42d` |
| 36 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-3.md) | 295 | `declaration-track:12059e224655abe8707ebc5a17c2a54fe2746e1da05b1b4931a59e7dc44fb9b7` |
| 37 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-8.md) | 300 | `declaration-track:b79c99e1082747f562967ce8e71285a82438471de58e5dbf2d0f8c7bf1237339` |
| 38 | `instance` | [(anonymous)](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instance-source-edition-7.md) | 305 | `declaration-track:70ce28d64335e35befed155421c62063c17a5c14c660c5f9e0312f434785ba7a` |
| 39 | `theorem` | [ContMDiffWithinAt.prod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-prod.md) | 327 | `result-track:5a774f928b738fedc025aa58c21f3ac15318e3cc227ef4e9e144cb7e00b00b8e` |
| 40 | `theorem` | [contMDiffWithinAt_finprod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-finprod.md) | 337 | `result-track:20853f33aa2778367685860e73fb83ed8e8dd2c70eeecea77fcf3a97709c7ea1` |
| 41 | `theorem` | [contMDiffWithinAt_finsetProd'](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-finsetprod.md) | 345 | `result-track:38ede951e1fb45315a89e3d68bfe9a025a8b23bbfd4fd556eaf1bb01529d62c5` |
| 42 | `theorem` | [contMDiffWithinAt_finsetProd](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-finsetprod-source-edition-2.md) | 357 | `result-track:70b96e2a099d090b4cb1c1410de732c75b7e86dfccd8edbc7091cdff749d7820` |
| 43 | `theorem` | [ContMDiffAt.prod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-prod.md) | 369 | `result-track:25514d3773dca21e8792136e94862704b779321901f7bc61cfda24567f95fd21` |
| 44 | `theorem` | [contMDiffAt_finprod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-finprod.md) | 375 | `result-track:c0f7deeaed4ebc720498ba09de2696b35101d568a66f42eeddb6d080a57c61b8` |
| 45 | `theorem` | [contMDiffAt_finsetProd'](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-finsetprod.md) | 381 | `result-track:17a2fb33307e320fa4b6f19b57d7294364825d440d6e51758224a502864696df` |
| 46 | `theorem` | [contMDiffAt_finsetProd](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-finsetprod-source-edition-2.md) | 391 | `result-track:b2f67cae891711ea09ed29e18d5800fd5b470113740886017f5cdeb8fca8cc5d` |
| 47 | `theorem` | [contMDiffOn_finprod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffon-finprod.md) | 401 | `result-track:22341f152cd19ac8ed725f3b7a10dd04bbc2b3c0152f6762bd232297765aa488` |
| 48 | `theorem` | [contMDiffOn_finsetProd'](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffon-finsetprod-source-edition-2.md) | 407 | `result-track:d1e061c702e5497673e49d9b2c0a9cc45886628d2a9808bcfd84d15f0360e887` |
| 49 | `theorem` | [contMDiffOn_finsetProd](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffon-finsetprod.md) | 417 | `result-track:a3d126f5866636ceed77e56f7188bfc5003a04c6966c631aa321ae0594bdb5ec` |
| 50 | `theorem` | [ContMDiff.prod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-prod.md) | 427 | `result-track:03398865cb3dcd439d6933c0d76c8828a5d902038e81f93a8e80acf65979fbf0` |
| 51 | `theorem` | [contMDiff_finsetProd'](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-finsetprod-source-edition-2.md) | 432 | `result-track:a2fd2af1a970929f96a1a4cdf859bde1a5e53d4b467c7d5a2e5ca7f3e42c30dd` |
| 52 | `theorem` | [contMDiff_finsetProd](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-finsetprod.md) | 441 | `result-track:2ab2b60758b7de98c6f15f6ec0c228cf0a1909b03ba9ddaa05f8166994ddec8f` |
| 53 | `theorem` | [contMDiff_finprod](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-finprod.md) | 451 | `result-track:708c401eca76882cff71514bb5ed502c55e1479ad20fad35e2e552015356d3aa` |
| 54 | `theorem` | [contMDiff_finprod_cond](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-finprod-cond.md) | 456 | `result-track:abce4dff177be30b2f636dbdc4d0219598b630410e68263fe5e1264e665b8b29` |
| 55 | `theorem` | [ContMDiffWithinAt.pow](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-pow.md) | 465 | `result-track:5432089fbad2793a6019acce02a444b9efa56b45fce39f0a307bc61ad8b4cfd1` |
| 56 | `theorem` | [ContMDiffAt.pow](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-pow.md) | 470 | `result-track:ce9773b5585ef81be531d78a62c74d1a2e7886804b553ca65d4929a817bb942d` |
| 57 | `theorem` | [ContMDiffOn.pow](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffon-pow.md) | 475 | `result-track:37e7bdc64ce8010e91081dd8e06ab765852f2e6b6f250485c385cde095b6bf77` |
| 58 | `theorem` | [ContMDiff.pow](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-pow.md) | 480 | `result-track:068ef81463677b6521b5688679f046cfc550cd4a0a749dd107b3ad02cdc45cbd` |
| 59 | `instance` | [instContMDiffAddSelf](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/instcontmdiffaddself.md) | 491 | `declaration-track:2bf9f800f61cedfc2c24d45268d66d3f94904f2cd48b22ea295bb1b8b97f56f5` |
| 60 | `theorem` | [ContMDiffWithinAt.div_const](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffwithinat-div-const.md) | 511 | `result-track:176e1680ca089608f3e927557adf2d5b8bcd9d5689cab570da8350650ef04f01` |
| 61 | `theorem` | [ContMDiffAt.div_const](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffat-div-const.md) | 516 | `result-track:6a4633a9018ecd1102c3aeaaf6d67ab3995e95cfdf59a8712e76e97320d3ce2c` |
| 62 | `theorem` | [ContMDiffOn.div_const](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiffon-div-const.md) | 521 | `result-track:fe7462f408ce206258dd2af0a3454c6dfa24243b3df68beea9ab2bb438b58a7b` |
| 63 | `theorem` | [ContMDiff.div_const](../../../../DifferentialGeometry/MonoidPublic.lean/declarations/contmdiff-div-const.md) | 525 | `result-track:99fcee40ad374451fa797a83c70f7bbe22bcdb0582faca2174df647ce11c6d37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e8380cd489f2418c2558dd834c586de3e6bdf4d36c1763f7246c3cedf12b59bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Monoid/Variante2e4e76a9d497b090e2ee5cc3b1723a990ca00bceb057739f5f2e4ce3ada7bb5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
