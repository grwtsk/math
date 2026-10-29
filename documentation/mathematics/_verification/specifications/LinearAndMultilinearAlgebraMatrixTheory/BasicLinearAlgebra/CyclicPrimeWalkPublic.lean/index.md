# Verification target: Cyclic Prime Walk Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "788ce4bb18ec18c19f5c3e76a884f0beff5552e8",
  "lexical_observation_count": 100,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `788ce4bb18ec18c19f5c3e76a884f0beff5552e8`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sqrtThree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/sqrtthree.md) | 77 | `declaration-track:6875c34bec33ca41532bb68a9645cd62e6672f4f7052d0aa50d29737f1bdd4fb` |
| 2 | `theorem` | [sqrtThree_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/sqrtthree-sq.md) | 81 | `result-track:e2ecbf69818ad6a48ecd8aa3b6cec5718b94890eca097212324001120957dad9` |
| 3 | `theorem` | [sqrtThree_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/sqrtthree-mul-self.md) | 86 | `result-track:a36fe1f8ae090375842c38ade8ab172421470def6aae17fe3ffcd1f45b5a2db3` |
| 4 | `abbrev` | [StandardCoord](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardcoord.md) | 92 | `declaration-track:2a4d12e5154ee3dec72b793e6d071ea1dfc62b715bd798dc27ef90370fe571b7` |
| 5 | `abbrev` | [StandardMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardmatrix.md) | 95 | `declaration-track:7b19be0ad966d1237cbd526151bbb89c157e7579957a855b7d3627763ac25d2e` |
| 6 | `def` | [trivialFiberVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/trivialfibervector.md) | 100 | `declaration-track:b94f69ce1047c066e4f96cf63c686ae28eaaf9b662ad6fcf7f930bebbe6053fa` |
| 7 | `def` | [InStandardPlane](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/instandardplane.md) | 105 | `declaration-track:a2fd8348c4ed66b531dce8a19f466d23f72722d04afda1471c43eb1aef506cf8` |
| 8 | `def` | [coordinateSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/coordinatesum.md) | 111 | `declaration-track:8e48cecf66815ef803ae229e023fe4b804be820fb8f2bd43ea2d3f3b5a52f678` |
| 9 | `def` | [zeroSumSubspace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/zerosumsubspace.md) | 118 | `declaration-track:a2b07be0265aab21823de3941bb64a9c9d10ff24917dec07065c4226c475b014` |
| 10 | `theorem` | [mem_zeroSumSubspace_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/mem-zerosumsubspace-iff.md) | 122 | `result-track:e862d0679c38aab97d48c0f570df0421147ca0cb3ea4802c31c860629a0938ee` |
| 11 | `theorem` | [coordinateSum_permutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/coordinatesum-permutationrepresentation.md) | 128 | `result-track:3de8a55bc3ad7e9b26a292bb0d1cae52a55fb0d1d78bc7315190e88118b96ade` |
| 12 | `theorem` | [permutationRepresentation_preserves_zeroSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/permutationrepresentation-preserves-zerosum.md) | 137 | `result-track:c27cbeff6cd39e8249c1a0703959ecc2eeba794e2e2114fe980ef1f6dff6ddb0` |
| 13 | `theorem` | [permutationRepresentation_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/permutationrepresentation-symm.md) | 146 | `result-track:33c91e3c7dcfb65f4e0e0b34f29658cfea41b7d779386e245ccbb1e1ecbeba3e` |
| 14 | `theorem` | [zeroSumSubspace_map_permutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/zerosumsubspace-map-permutationrepresentation.md) | 155 | `result-track:fec17535a16cf451736f265784439b022680a08c6def99f70bc5ed6286ed4f60` |
| 15 | `def` | [restrictedPermutation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/restrictedpermutation.md) | 172 | `declaration-track:3c9240a58c67b1e7c1348aca2c6a293ab0bf30c12cd2af4a48827ba9a66a6b73` |
| 16 | `theorem` | [restrictedPermutation_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/restrictedpermutation-coe.md) | 178 | `result-track:9a4cae48d2b70783c9249439f188b7ce3e58dc7f8f1f7d8eb25b9e9d8377d108` |
| 17 | `def` | [standardPermutationRepresentation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardpermutationrepresentation.md) | 187 | `declaration-track:34f0ee70e4d448ca8a6ad36158aabc7a41ccc544d9a1352e661331ea0c402cc6` |
| 18 | `def` | [standardBasisU](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardbasisu.md) | 204 | `declaration-track:04079232c2fb67e2d7cb4a26ec62cb586225d704a57aff728e7d90eaf92842fb` |
| 19 | `def` | [standardBasisV](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardbasisv.md) | 211 | `declaration-track:c51c0692e2579b2862ecd3e9f52fc69479800d45bdcb36c5c5ac015a2f5e2b1c` |
| 20 | `theorem` | [adjacentSwaps_fix_trivialFiberVector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/adjacentswaps-fix-trivialfibervector.md) | 215 | `result-track:938b6839e1145412cafe1945ff69ea04bf8faf2e101d965656ab342503f8d4e7` |
| 21 | `theorem` | [standardBasisU_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardbasisu-mem.md) | 224 | `result-track:26539d0fb476d341a6f71a16429d603f4e4facd004f80640d354ad4b31384151` |
| 22 | `theorem` | [standardBasisV_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardbasisv-mem.md) | 228 | `result-track:20003f11fc547383f2d41d24db08d561c34e37bfb5858054a76fd4eaeca8e2c4` |
| 23 | `theorem` | [standardPlane_coordinates](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardplane-coordinates.md) | 237 | `result-track:d8545d6499f12159d58b593c24064f71394b8c88ee9e9a8a63b9ce225e6d626d` |
| 24 | `theorem` | [standardBasisU_mem_zeroSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardbasisu-mem-zerosum.md) | 257 | `result-track:ebda5076c688360bc1b656f338c43e2e52fa1055a7391e8025bd2f3197cc72a3` |
| 25 | `theorem` | [standardBasisV_mem_zeroSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardbasisv-mem-zerosum.md) | 262 | `result-track:7c78300202640aaad183e6f74df72feabadd1f0ced6651a035703ba718947077` |
| 26 | `def` | [standardPlaneEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardplaneequiv.md) | 272 | `declaration-track:b68d8e842976af7d5067352b44b7287cc23d1ef973c55c80d453beaf9afbf0bf` |
| 27 | `def` | [standardPlaneBasis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardplanebasis.md) | 307 | `declaration-track:9f4473ea3cf8fe928a96407bf1f3f23e613d551dc8bf4b5d77d5900f48bc0564` |
| 28 | `theorem` | [standardPlaneBasis_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardplanebasis-zero.md) | 311 | `result-track:514241ab4093e81fa1a707bc8a80aad7960839bc249866857f450ceb3d25e7a7` |
| 29 | `theorem` | [standardPlaneBasis_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/standardplanebasis-one.md) | 318 | `result-track:c0de305b3702495ea726f1413fab5876f319e84da4bdf07cec7891b7003fa098` |
| 30 | `theorem` | [adjacentSwap01_standardBasisU](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/adjacentswap01-standardbasisu.md) | 326 | `result-track:4d60690abf8e03d4dd731942dcfeb0ca66213ec762a0f7a96c6ce0a6c88673c9` |
| 31 | `theorem` | [adjacentSwap01_standardBasisV](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/adjacentswap01-standardbasisv.md) | 333 | `result-track:a769bd795ea9124358c6396f3b240abf5b70ac5c78c9936b496e7131f1271bee` |
| 32 | `theorem` | [adjacentSwap12_standardBasisU](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/adjacentswap12-standardbasisu.md) | 342 | `result-track:8537388f15bc71a7e47db23b65f4c09ecd326ea6deb247adb002bb48f2081037` |
| 33 | `theorem` | [adjacentSwap12_standardBasisV](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/adjacentswap12-standardbasisv.md) | 353 | `result-track:ca52f203fd74d7a323ced2cf3f2c9351a820fd6100b09e3597c192eee41b7ac8` |
| 34 | `def` | [residueOneReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueonereflection.md) | 364 | `declaration-track:f9a18e93ed51a95026e4eaef44215134f4ffe6cb54a97f5269f9b6685621bf72` |
| 35 | `def` | [residueFiveReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefivereflection.md) | 370 | `declaration-track:0bb2a39edbe0bced5c44f1c68ccd62252a4801aaf4a27b278a9d4bf23dde3e5d` |
| 36 | `def` | [restrictedSwap01](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/restrictedswap01.md) | 377 | `declaration-track:0d72eaa7cb8ff7864b8abb5e00f6d2d0ab5e9ce636cd47cd6380f49fd1422778` |
| 37 | `def` | [restrictedSwap12](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/restrictedswap12.md) | 383 | `declaration-track:db5bd013e73b995f286f156aef0ed6fdc3f4cd7190f310d8068ab13cf2836b74` |
| 38 | `theorem` | [restrictedSwap01_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/restrictedswap01-tomatrix.md) | 388 | `result-track:bd9810ebd6a6b92b42e23d5b6d1b640e8998595196f4d4e6e006d52a68619b17` |
| 39 | `theorem` | [restrictedSwap12_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/restrictedswap12-tomatrix.md) | 403 | `result-track:b3fd9d22ea9732d47e82f64cb3967f0dd48c4d219418474124c08afcb8dc49bc` |
| 40 | `def` | [coordNormSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/coordnormsq.md) | 418 | `declaration-track:a3934c74b824f252ea089f93949448d7ceca35899f5e7b02b516a57b53695025` |
| 41 | `def` | [coordInner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/coordinner.md) | 423 | `declaration-track:2dff77aca3e74bcefee3028acd8b6722b371d4953d3d40e9bf174d0ba90eaa5f` |
| 42 | `def` | [residueOneAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueoneaxis.md) | 428 | `declaration-track:a4797cd79b3705e4645656fe9ceab6b442b89429cdf8f6676981d01d868f6f12` |
| 43 | `def` | [residueFiveAxis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefiveaxis.md) | 433 | `declaration-track:fa33e55d81abb2dadec3ee1da160d151a93e1daa832c643345f0f5794083fac9` |
| 44 | `theorem` | [residueOneAxis_unit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueoneaxis-unit.md) | 437 | `result-track:97f8141bc07f1c269fa4ab215c9a67f431c6446d9779dabf606c74b019217709` |
| 45 | `theorem` | [residueFiveAxis_unit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefiveaxis-unit.md) | 441 | `result-track:7d74a481181c1b6653ac8d103f4b8d72b7231d58b2028b8fdba3676764f50ee7` |
| 46 | `theorem` | [reflectionAxes_inner](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/reflectionaxes-inner.md) | 447 | `result-track:b0bb04ca4e5d9e8a20be679a00949358a535b25555b916fab2f93c8d2370f4b7` |
| 47 | `theorem` | [reflectionAxes_inner_eq_cos_pi_div_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/reflectionaxes-inner-eq-cos-pi-div-three.md) | 453 | `result-track:8369960dc5e6ad6c09f40e06a5ad8e3f5f4f04c0ceadb3039d0317a5f27fe622` |
| 48 | `theorem` | [residueOne_fixes_axis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueone-fixes-axis.md) | 458 | `result-track:880cf222ca8bec7a014b36ec09fd2bb306452779f7b498cd9a0a3f83e0f4e8ff` |
| 49 | `theorem` | [residueFive_fixes_axis](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefive-fixes-axis.md) | 466 | `result-track:ed3ff3fb624f78874fb4ca117aab739c3f18d5de407b37cb5a13871221f328f3` |
| 50 | `theorem` | [residueOneReflection_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueonereflection-sq.md) | 475 | `result-track:26c1b2dcd018d5b6a2062470e7fcf7715cebb0896a35bf5e89e62e75a307220b` |
| 51 | `theorem` | [residueFiveReflection_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefivereflection-sq.md) | 483 | `result-track:e590b6e986dc912002ae978adc59bf8b7c0761bece13233f02cf7c0ec654b055` |
| 52 | `theorem` | [residueOneReflection_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueonereflection-det.md) | 491 | `result-track:4f4872c04afa338d75186a860d0caed8142bc0e9b951e3c2f812eb03c836beba` |
| 53 | `theorem` | [residueFiveReflection_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefivereflection-det.md) | 497 | `result-track:29d5392f2db5c0de6ad61c04d183a8ada32f007447eb4653499f32ac86f2ddef` |
| 54 | `theorem` | [residueOneReflection_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residueonereflection-normsq.md) | 505 | `result-track:515822a1e57e212db57cc54a0bf5153549e21fedd216a3671018797fe319c995` |
| 55 | `theorem` | [residueFiveReflection_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuefivereflection-normsq.md) | 512 | `result-track:cb9c255fd56b9f421e6636e3a086fb86edfc830935c274e278a0563e73eaac16` |
| 56 | `def` | [chosenReflection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/chosenreflection.md) | 520 | `declaration-track:d49fab4d35624f974f9e406581f0ee6b7ff6ab67c90592346bd97609496bd1de` |
| 57 | `theorem` | [chosenReflection_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/chosenreflection-normsq.md) | 524 | `result-track:e0e335ca1189e5ed6e508447ab7707d4d2aa2d5d5eb9f23b4dd7a090985aebc0` |
| 58 | `theorem` | [chosenReflection_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/chosenreflection-det.md) | 531 | `result-track:def76ce74bd01bfdba218796cab45d052d3d8f29adfb362539ccfd102648f3e6` |
| 59 | `def` | [reflectionProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/reflectionproduct.md) | 540 | `declaration-track:848d4f5fc02628d65cad3a0b2e058651b87673f63bd94a564e9d0cf3f6dbcd5a` |
| 60 | `theorem` | [reflectionProduct_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/reflectionproduct-normsq.md) | 546 | `result-track:7b6e9422725245f167118698bcd898b82f739c4b4595647e77b0fdd5ff31a550` |
| 61 | `theorem` | [reflectionProduct_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/reflectionproduct-det.md) | 558 | `result-track:df1102ec79167cf648869a13f14424a55cf61dff19c4394f4d61cb5ac0d32b4b` |
| 62 | `def` | [idealTransition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealtransition.md) | 569 | `declaration-track:b2467ec1a25e79a4fdab1de774e63f01733456127ecb1307a8e551a9fbbb52dd` |
| 63 | `theorem` | [idealTransition_entries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealtransition-entries.md) | 573 | `result-track:7fc86deb433e8a9d41a6a97ac0119ea3b29aa6cb2d3263f13a04a601ac90d161` |
| 64 | `def` | [idealPositiveEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealpositiveeigenvector.md) | 584 | `declaration-track:1cacb4076a6df5e15ffe0922ecd9a497a3aa840403c24f5346a0cf9f383b3fe3` |
| 65 | `def` | [idealNegativeEigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealnegativeeigenvector.md) | 589 | `declaration-track:9cee5c474cfed4b61b58b94c7c8c6a21c4d47032ad1083768a75f9c9f8695c84` |
| 66 | `theorem` | [idealPositiveEigenvector_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealpositiveeigenvector-ne-zero.md) | 593 | `result-track:df0f3d1ab7121ea7f313dce24ec2103328f8223386106ead2682fe59199ee49e` |
| 67 | `theorem` | [idealNegativeEigenvector_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealnegativeeigenvector-ne-zero.md) | 600 | `result-track:0f1eb863f4b35aa7cfeada043d892fa97b6675fc0dbed8b46d7fbd985cbcf6f8` |
| 68 | `theorem` | [idealTransition_positive_eigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealtransition-positive-eigenvector.md) | 608 | `result-track:03e36f3d4017758565ce572d84882526d6098120498f9583af0371fa122d48fa` |
| 69 | `theorem` | [idealTransition_negative_eigenvector](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealtransition-negative-eigenvector.md) | 619 | `result-track:29c8ac696a874e6c9dfde2d679da5a92e2beae2baaddc7322a8b0332aca46501` |
| 70 | `theorem` | [idealTransition_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealtransition-sq.md) | 630 | `result-track:af5f09cb9773e835f476243b214d3c9b01539de461befb800e7b1f2501419a72` |
| 71 | `theorem` | [idealTransition_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealtransition-normsq.md) | 641 | `result-track:e876d2664a77b71e11344edd61c64e090dd95b34477db79162e277482764e69b` |
| 72 | `def` | [idealStandardSpectralGap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealstandardspectralgap.md) | 650 | `declaration-track:f9efa066434f5f760d056b6f4add48abbb8c7ebe1fdb9b33528c5da1e8a19562` |
| 73 | `theorem` | [idealStandardSpectralGap_eq_half](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/idealstandardspectralgap-eq-half.md) | 654 | `result-track:9511b4ff3868ce1623cad8379154f7129184b9b29ac53bd818e0cb8d5651b692` |
| 74 | `def` | [empiricalTransition](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/empiricaltransition.md) | 662 | `declaration-track:346ae8119857df6ddf901bfa06e377b39528325d97c8256762260f6bdca3a086` |
| 75 | `def` | [centeredWeight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/centeredweight.md) | 667 | `declaration-track:bb66c140f4281f4ffe105b0e071f92448f36ffe37f6223dde5e8c557b2ec9d94` |
| 76 | `theorem` | [empiricalTransition_entries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/empiricaltransition-entries.md) | 672 | `result-track:38175616c95fb81b702200512381ce04fe489a603538fab0c5ee5fa4d370621f` |
| 77 | `theorem` | [empiricalTransition_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/empiricaltransition-sq.md) | 686 | `result-track:c6b78f688b56f91625ac0b21e7ca97f57c9c6d9411d3bbbe9d16e6c3ab4aae57` |
| 78 | `def` | [empiricalWeightFromCounts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/empiricalweightfromcounts.md) | 704 | `declaration-track:30fa93e7e1d7a769bceb678ea5384fa8e06be9d229f2c4898e533b799f1c8053` |
| 79 | `def` | [empiricalTransitionFromCounts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/empiricaltransitionfromcounts.md) | 709 | `declaration-track:0de02b7dd0253b78e0bdb6cacedad4b230fc1753a554c27aecfca843a5790ce9` |
| 80 | `theorem` | [one_sub_empiricalWeightFromCounts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/one-sub-empiricalweightfromcounts.md) | 715 | `result-track:db1103d9d2d550fc85ff18704c6f4eeabaf1c632ab0a7d6c53f8a4208ffd029c` |
| 81 | `theorem` | [centeredWeightFromCounts](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/centeredweightfromcounts.md) | 730 | `result-track:63b0a48962d736209c1ca3ba93e403989ee0b1c3ed1906cdd733d9715f7c9303` |
| 82 | `def` | [discrepancy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy.md) | 745 | `declaration-track:7114c6305d2b0a075add0755f46f532d71b0b179719eea54f31e7b272ccdda2c` |
| 83 | `theorem` | [discrepancy_eq_centered_smul_difference](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-eq-centered-smul-difference.md) | 751 | `result-track:a2762971a62c74f93658b1dceaf141c112e708993e3effc88c83e0bdd7eb669b` |
| 84 | `theorem` | [generatorDifference_entries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/generatordifference-entries.md) | 760 | `result-track:b078a6402119a4b5a689d4d3458d0a701d362846ecbd0c1a0b1bda3976a7aa14` |
| 85 | `theorem` | [generatorDifference_sq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/generatordifference-sq.md) | 770 | `result-track:7712dcc9f424b130ae9b6828c4ab011c100148d058b60f68b361da53a77a7e3d` |
| 86 | `theorem` | [discrepancy_complement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-complement.md) | 782 | `result-track:ab427be0c83a0801352e0bc6ccc588b819b2283fd42f96e4f64c56a6ffb827ef` |
| 87 | `def` | [signedObservable](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/signedobservable.md) | 792 | `declaration-track:f0e0f774d0d87d92a8430a7cc087ec635f64dc72da8d8420f9d686a3fc4baf30` |
| 88 | `theorem` | [signedObservable_discrepancy](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/signedobservable-discrepancy.md) | 797 | `result-track:b4c5ea5d0ac2aa55857b59261b570ee27a1ecdb22eabc1c5d9ae2201ae730fed` |
| 89 | `theorem` | [discrepancy_entries](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-entries.md) | 806 | `result-track:cbfa901f14f09504b895365e1396e71ea6d0b3871818945ecab33aafe92f22dd` |
| 90 | `theorem` | [discrepancy_trace](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-trace.md) | 820 | `result-track:b521fc065b3c98cefc02411481f2f8553db53446aa906741c0310abebd87f29c` |
| 91 | `theorem` | [discrepancy_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-det.md) | 829 | `result-track:eb11eb5f4518c041b940d8bcedb1f3b3508e1cd7ad37458032fedd86352a1bf4` |
| 92 | `theorem` | [discrepancy_det_complement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-det-complement.md) | 839 | `result-track:753951bcb41463c1829a94de980515251dec219ff600d4723b1325adb26e6c9b` |
| 93 | `theorem` | [discrepancy_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-normsq.md) | 847 | `result-track:f31807a1a70c4e299ae808a8cc2352c2dcb76194c290f1e6fc826e34f42cfb8e` |
| 94 | `theorem` | [discrepancy_normSq_complement](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/discrepancy-normsq-complement.md) | 858 | `result-track:385b02b2f4191e2e5a1de4fd13b9293fea533f6944fce36d1e6b7cb55d171316` |
| 95 | `theorem` | [empiricalTransition_normSq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/empiricaltransition-normsq.md) | 869 | `result-track:7e3cc27dd36b8832298d193b196a84514a7011b36b93e1861c4ea3023d4a660f` |
| 96 | `def` | [residueStep?](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuestep.md) | 884 | `declaration-track:cba63fbafb54042ac5dde6150188990856d3789ad444b3bc38cfdf2a8d813ae5` |
| 97 | `theorem` | [residueStep_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuestep-two.md) | 890 | `result-track:66aed9295d786f5deb95b2c54e9b678d5fc548638d1db27905dbd2a6d4eaea02` |
| 98 | `theorem` | [residueStep_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuestep-three.md) | 894 | `result-track:777853fdd4fa2feb50df50436d7484347a6d0dd1c4198fa4f92e900e8bf7476f` |
| 99 | `theorem` | [residueStep_one_mod_six](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuestep-one-mod-six.md) | 898 | `result-track:81ebeac232fc2ea9e01c0517685fe0f5e8bc1ec53b3a01205d40712b5e8dbe37` |
| 100 | `theorem` | [residueStep_five_mod_six](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/CyclicPrimeWalkPublic.lean/declarations/residuestep-five-mod-six.md) | 903 | `result-track:942df10e33f755042dc94fac73c36dbbe2d0982b5cd630227aff5e61101b3b4e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3b86a580f0c1eeea891721277c33a6cf1b3ca16c9e6243dae170ed36f7da78ee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CyclicPrimeWalk/Variant18b1e769f416621f73cad9ea60a104f5cccce7e861a10fa1869d0d0d451bf104.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
