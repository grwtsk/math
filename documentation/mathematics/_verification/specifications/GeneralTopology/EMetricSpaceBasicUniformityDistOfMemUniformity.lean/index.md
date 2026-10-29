# Verification target: EMetric Space Basic Uniformity Dist Of Mem Uniformity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b",
  "lexical_observation_count": 173,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/index.md) · [Full source](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d2f8353d94eebf5ecb72e3d5cd8667e8947e9c6b`.

Source path: `GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Interval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.ENNReal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformConvergence` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [uniformity_dist_of_mem_uniformity](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-dist-of-mem-uniformity.md) | 41 | `result-track:6f7e7b0dabda521be27ff81fc2e227b8e75dece50572be8efa32d1bff86641bc` |
| 2 | `class` | [EDist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist.md) | 48 | `declaration-track:f2457441aa7189982ffb52e4752c2bbca1721303155c23feec559c4567a7e356` |
| 3 | `def` | [uniformSpaceOfEDist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformspaceofedist.md) | 55 | `declaration-track:5ff4088d021b9118a75a750de710c5c2698359b4be5bd48f206f33882321462a` |
| 4 | `class` | [PseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/pseudoemetricspace.md) | 78 | `declaration-track:8381ae6299697af693f73c67caa495eac9221bb38749bc031e5d644772bf93f3` |
| 5 | `theorem` | [edist_triangle_left](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-triangle-left.md) | 97 | `result-track:bd5b4dfb2b8f7db8c7de96fa7cb73f7193c48dcbcc78d8241c310673e8208a41` |
| 6 | `theorem` | [edist_triangle_right](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-triangle-right.md) | 101 | `result-track:15bd48585487fd435ccd5a522cd612b1c8a5cac34a7cfadd8dcbc0b7dc2de9c3` |
| 7 | `theorem` | [edist_congr_right](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-congr-right.md) | 105 | `result-track:a07e183f21b3bb439f49b1329047f28c02669c84481af4cb71b636bdc87e4794` |
| 8 | `theorem` | [edist_congr_left](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-congr-left.md) | 114 | `result-track:b9a406d00ec211de642b9b9ff2361ecb39dac6a6415bc3be0b50d48ec4e3efbd` |
| 9 | `theorem` | [edist_congr](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-congr.md) | 120 | `result-track:1db9c28e8a06cba9e5674fd1c7d4d34ea98ed3aaa8abb43b622f8f560cf5a5bb` |
| 10 | `theorem` | [edist_triangle4](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-triangle4.md) | 124 | `result-track:73c4573ac345722b5d4f6f2c48e263552aa0731cb22f595011863d675a214e0d` |
| 11 | `theorem` | [edist_le_Ico_sum_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-ico-sum-edist.md) | 131 | `result-track:ed1456148645cfeb243f2fdfbff95d2f402c6ac69f95823c0b834487177e1b95` |
| 12 | `theorem` | [edist_le_range_sum_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-range-sum-edist.md) | 144 | `result-track:c3419ffb796e6c3bd5e88553cd2713764e80d89a27f2c6d9fc3c8df61a62e610` |
| 13 | `theorem` | [edist_le_Ico_sum_of_edist_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-ico-sum-of-edist-le.md) | 151 | `result-track:4e1f65df0f47f4c706eb291b789f085b544ca2a62ab4ce2d1f2ce760519794cc` |
| 14 | `theorem` | [edist_le_range_sum_of_edist_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-range-sum-of-edist-le.md) | 160 | `result-track:abd3fd12be214b9cb97538acadbdacbaf904fa45b5734d8678cad0fff09caf01` |
| 15 | `theorem` | [uniformity_pseudoedist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-pseudoedist.md) | 167 | `result-track:37805845e8964368a44f6e6adf8047626c9138b231b9c5863611a8bb64659b0f` |
| 16 | `theorem` | [uniformSpace_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformspace-edist.md) | 171 | `result-track:e4913816f2d822195bbd9c96084e5f41cf560aad2154f96a16883c3d1bef921e` |
| 17 | `theorem` | [uniformity_basis_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-source-edition-2.md) | 177 | `result-track:945fffb46739a2f5df910a6d3dba2eeecd7e9d03be74dd6735784d2a49371ef9` |
| 18 | `theorem` | [mem_uniformity_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-uniformity-edist.md) | 183 | `result-track:3a7fc0e9b58a6c66ba055934d23a929f8c87f019d8cde5f402b801c69409345f` |
| 19 | `theorem` | [EMetric.mk_uniformity_basis](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetric-mk-uniformity-basis.md) | 193 | `result-track:0377784ca6c81e1ed9354dcad4fb954c642ebb2b1bd93a3996834cfb140d5a3f` |
| 20 | `theorem` | [EMetric.mk_uniformity_basis_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetric-mk-uniformity-basis-le.md) | 208 | `result-track:ad5902ea75a2737bb03353fd479f7a06124908f72ef70aec61a5cd1411969a05` |
| 21 | `theorem` | [uniformity_basis_edist_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-le-source-edition-2.md) | 220 | `result-track:7d96da0bc6cf0c3ce3bf1317d84b86034d5b039e558b5af53d2deeaface5ef6c` |
| 22 | `theorem` | [uniformity_basis_edist'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist.md) | 225 | `result-track:828ba74b181bcc961d2baac75bb272187bb9989f146a6a5242c0424e36f5a20e` |
| 23 | `theorem` | [uniformity_basis_edist_le'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-le.md) | 232 | `result-track:7281eccc8de37506c85a432bd77f69b0f5fa30c1bc7c5f7710264914595fb476` |
| 24 | `theorem` | [uniformity_basis_edist_nnreal](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-nnreal.md) | 239 | `result-track:ea71e4e5d87c09a3a7f1b51cd7db5b005d097bd2fff186e51cc54a0319981a01` |
| 25 | `theorem` | [uniformity_basis_edist_nnreal_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-nnreal-le.md) | 246 | `result-track:260283663ca3190b99c781b78ecb768d940824263bcab53e6c1456cc07070155` |
| 26 | `theorem` | [uniformity_basis_edist_inv_nat](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-inv-nat.md) | 253 | `result-track:39a534d76456393b37f08761d429b4557d814ae0a030f6c5b7dd31fa56438334` |
| 27 | `theorem` | [uniformity_basis_edist_inv_two_pow](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-basis-edist-inv-two-pow.md) | 260 | `result-track:26843379cb2971f228fa3db8c56a3d33c34e79b50bd26299ce3c4a62f43d4a6a` |
| 28 | `theorem` | [edist_mem_uniformity](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-mem-uniformity.md) | 269 | `result-track:18f71b21d49e40def43d69b2adb37313ebca05b3b661bff934fde511b2668d73` |
| 29 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-3.md) | 275 | `declaration-track:10fd7fd00d6527625cfb0645bc85e481fa917fd0adfd77198f854697d1792b30` |
| 30 | `theorem` | [uniformContinuousOn_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformcontinuouson-iff.md) | 280 | `result-track:f25e4b6687f8a2fc88d248a45d0698f33004f1bd6147487e5391241ae34daba3` |
| 31 | `theorem` | [uniformContinuous_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformcontinuous-iff.md) | 287 | `result-track:5cc11df049bf9f6480ae823615cfbc3e1b1ac5895b77f6fa9233ba60fbd990aa` |
| 32 | `theorem` | [uniformInducing_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniforminducing-iff.md) | 293 | `result-track:a88fbbd36bbccb8d47dd16068cd6aaa08a5c1c339c7c16f16d249f29029f59ec` |
| 33 | `theorem` | [uniformEmbedding_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformembedding-iff.md) | 301 | `result-track:28fbba2f985dd30589c5c09e9237aba5f7499b7e71105a309dd6197fc61f0075` |
| 34 | `theorem` | [controlled_of_uniformEmbedding](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/controlled-of-uniformembedding.md) | 312 | `result-track:a8ca372a53be1d9cb101a10867d7f1fe19067996f0f102f0869201bc8824aa0c` |
| 35 | `theorem` | [cauchy_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/cauchy-iff.md) | 319 | `result-track:9636882663e4f73f10a4c7c16b785568a9c777ff8b88c6e36c6bc6f1b94549bb` |
| 36 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/complete-of-convergent-controlled-sequences.md) | 329 | `result-track:53b53c290f55a928169ea6c109f67b1f37c1473132b6fd601a530c8c28b19053` |
| 37 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/complete-of-cauchyseq-tendsto.md) | 338 | `result-track:4875b35d47d096eea4013f231de758ac4ff759bf5039e460354f899a131543da` |
| 38 | `theorem` | [tendstoLocallyUniformlyOn_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendstolocallyuniformlyon-iff.md) | 344 | `result-track:42d98ed831da308f1b5b9051fe16bedf0384e37b274c6c93992602de01a9236e` |
| 39 | `theorem` | [tendstoUniformlyOn_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendstouniformlyon-iff.md) | 355 | `result-track:d5340a8f50ed5c99e73f897f3cc7091efde389efa09cbbad50d96566603a6b8a` |
| 40 | `theorem` | [tendstoLocallyUniformly_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendstolocallyuniformly-iff.md) | 363 | `result-track:dc43489e8e6559a23262319a4cd7cca3ae1b85a1f552896a75773058ef5b830e` |
| 41 | `theorem` | [tendstoUniformly_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendstouniformly-iff.md) | 372 | `result-track:9d62bfb7a6fe10c85e0807e46a8b790c051008504a26b6af09fe5e6cf595d2d3` |
| 42 | `def` | [PseudoEMetricSpace.replaceUniformity](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/pseudoemetricspace-replaceuniformity.md) | 387 | `declaration-track:053bd5e23176f6a91bca990c974123e0e9f589b7d7ccacc1a7bf06caf8b39a85` |
| 43 | `def` | [PseudoEMetricSpace.induced](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/pseudoemetricspace-induced.md) | 398 | `declaration-track:6d8d7f2549e13b9f1576dd756265c5ddd5ae5950b7709a4165f814ef4805efec` |
| 44 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-11.md) | 409 | `declaration-track:81b4812b274e78a437dad4a9ea35a8fcc1e303edecff6fc998aa422d3fafdaa8` |
| 45 | `theorem` | [Subtype.edist_eq](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/subtype-edist-eq.md) | 414 | `result-track:58f1956df3f2117162f8a41d80d5721018c02dd85f0b176ee4b4f50475055aa7` |
| 46 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-20.md) | 421 | `declaration-track:f94a85cb67d85f4e33f1e22f240bfd484202722ac3de7e9b5dac3cb72b8c0367` |
| 47 | `theorem` | [edist_unop](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-unop.md) | 425 | `result-track:29120d405297a8c547505ca2df341d76d423e591ee7f401e1e245832076ebe54` |
| 48 | `theorem` | [edist_op](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-op.md) | 430 | `result-track:6a98c34a29dcbf40b71097c17f8dbf182872fd032dc8a23a59cbe2eabf96e851` |
| 49 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-14.md) | 438 | `declaration-track:abcf8e8970f64e476b75d4f428b289e70de6ac281df3cb1a7540f859f6435142` |
| 50 | `theorem` | [ULift.edist_eq](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ulift-edist-eq.md) | 440 | `result-track:a83bc87ca4962eecea51bd1518100aa8b31bbf6c416f50fe036e56a101909ef5` |
| 51 | `theorem` | [ULift.edist_up_up](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ulift-edist-up-up.md) | 444 | `result-track:f4864506667e6d19485dc0bef7ff020b4b1dcd95745bca1906beb8933469f332` |
| 52 | `instance` | [Prod.pseudoEMetricSpaceMax](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/prod-pseudoemetricspacemax.md) | 452 | `declaration-track:fe0f2c0b9d27c9ba92fc47159bee40bfb92b4be46c71c996fa8d5f0cef1a5039` |
| 53 | `theorem` | [Prod.edist_eq](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/prod-edist-eq.md) | 464 | `result-track:4515434f27b4dcba55c375c7444170de7e4f119a7b62efd0119be9c154b1f1e3` |
| 54 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-12.md) | 476 | `declaration-track:8c0b04605ffe304623878ad974643f0e38216f743f5b8fe18e0de44f15b37d5b` |
| 55 | `theorem` | [edist_pi_def](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-pi-def.md) | 479 | `result-track:e288303cee2c593a08f514798c88cc96aa7f1bd0cdba2cce59a56f6044740edc` |
| 56 | `theorem` | [edist_le_pi_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-pi-edist.md) | 484 | `result-track:78269cd8cc88232bae5e149fc2d5f1d4672d7e7c72073357a99e18021ceba847` |
| 57 | `theorem` | [edist_pi_le_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-pi-le-iff.md) | 489 | `result-track:568dea6312847a111b35c48df767aae28ae3d1ee7b4a16debca6ca8f14ae1998` |
| 58 | `theorem` | [edist_pi_const_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-pi-const-le.md) | 494 | `result-track:0051e3ca8d73be0e60a2fc57045d84523599cad867fd06964db1cc9bfc6065fc` |
| 59 | `theorem` | [edist_pi_const](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-pi-const.md) | 499 | `result-track:6c3064a2470c856c989382ebd6b5b392b6d4404f33d5cbaf93c359e94725e84d` |
| 60 | `instance` | [pseudoEMetricSpacePi](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/pseudoemetricspacepi.md) | 508 | `declaration-track:dadffa7db2f9684a56e3a829800af260abe76af2e037f03d0e27a15dcc4969f1` |
| 61 | `def` | [ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball.md) | 529 | `declaration-track:da93fbc02482f4b99586567977f7a0cccd341d3a81b23de6b9ced49788d3d8c0` |
| 62 | `theorem` | [mem_ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-ball.md) | 533 | `result-track:344a006027b319fc1b9d00fa462b8c5381abacfc02f4d09dbffa97ef1797a007` |
| 63 | `theorem` | [mem_ball'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-ball-source-edition-2.md) | 536 | `result-track:77f6f93903cff9769fa9ba92d551cfc238a6e346070be270ff062c978a400988` |
| 64 | `def` | [closedBall](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/closedball.md) | 540 | `declaration-track:df9a1e94d20c3a3bbb8e8bc63f96600817d74813a378a00610ef5f2c95748d7a` |
| 65 | `theorem` | [mem_closedBall](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-closedball-source-edition-2.md) | 544 | `result-track:d187e8516be1a35066ce784f249612e16d27a12d14b46c517f2915ff3cb78164` |
| 66 | `theorem` | [mem_closedBall'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-closedball.md) | 547 | `result-track:a1dfa4f304e6410ca8b59673056a108230e8dda707a6823ea6f7f23444e2903f` |
| 67 | `theorem` | [closedBall_top](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/closedball-top.md) | 551 | `result-track:4d13ebbee489edcc32492206ca04d4752ee19bba14b613c6f9ea47a300ad36ff` |
| 68 | `theorem` | [ball_subset_closedBall](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-subset-closedball.md) | 555 | `result-track:140bdf14d359543acd414365538f33522586d5f92a5acde3d923d1f54f8750c5` |
| 69 | `theorem` | [pos_of_mem_ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/pos-of-mem-ball.md) | 558 | `result-track:a2aacb00eee25885fd5afe66c10198ab464c8f6ee9677a5c5e37aba368b81d7b` |
| 70 | `theorem` | [mem_ball_self](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-ball-self.md) | 562 | `result-track:457188771e1ea8409ca43b1e9ad25a05f17b35c1c4c99f1828a647f68bbabff9` |
| 71 | `theorem` | [mem_closedBall_self](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-closedball-self.md) | 566 | `result-track:e9defa733175d9ac284be059527309bd5844e9b705972eec29bc878ac5fead4c` |
| 72 | `theorem` | [mem_ball_comm](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-ball-comm.md) | 570 | `result-track:a83568480216ba32ee3135e546f153c4ff848e6cff8af1cd7fd6d677c7658e8d` |
| 73 | `theorem` | [mem_closedBall_comm](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-closedball-comm.md) | 573 | `result-track:770bbbf41fa2dcb99143681d564329a30e3f998bd76ab4511958017560b41113` |
| 74 | `theorem` | [ball_subset_ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-subset-ball.md) | 577 | `result-track:c086af1e54d37393735b33d9c8c62e075ecc267bf05e02fac42c2c653a645268` |
| 75 | `theorem` | [closedBall_subset_closedBall](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/closedball-subset-closedball.md) | 581 | `result-track:488ec875a00dd2c7f601787b644873c1ad3a777d9c6a083b707b60a2b9400577` |
| 76 | `theorem` | [ball_disjoint](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-disjoint.md) | 585 | `result-track:38ca5e0c55f00a6929b61374993246899de19093a628c96f1867327e08115a77` |
| 77 | `theorem` | [ball_subset](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-subset.md) | 590 | `result-track:da88cf05c57f95f49ded186bff201db5a24796aaa489de2384f0cb7eee4250f8` |
| 78 | `theorem` | [exists_ball_subset_ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/exists-ball-subset-ball.md) | 599 | `result-track:83f00431a67f4a6d13ce8ef4aea270431665434bf1f20aeb81c255c4376fe0b4` |
| 79 | `theorem` | [ball_eq_empty_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-eq-empty-iff.md) | 605 | `result-track:ab4e758cd9893b066a7abf086275eddb4b1dbae3ba61bf20711f5f02810915fb` |
| 80 | `theorem` | [ordConnected_setOf_closedBall_subset](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ordconnected-setof-closedball-subset.md) | 611 | `result-track:bbc64d93bd26809fdb4ba4e09f380a35ec41856b288bda41c1ba94e00b67ad2e` |
| 81 | `theorem` | [ordConnected_setOf_ball_subset](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ordconnected-setof-ball-subset.md) | 616 | `result-track:4a411917ed519e2428be0ea5d2580e8764adc1c0751e7342903573e41bbef85f` |
| 82 | `def` | [edistLtTopSetoid](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edistlttopsetoid.md) | 621 | `declaration-track:c240aa4dbe2df41e82b6ec9666071524694182e00ed03fd4bce8d78d57891c87` |
| 83 | `theorem` | [ball_zero](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-zero.md) | 630 | `result-track:4a2e24d19bb1b0bfbc90bd099f0e07f6bd443251e83ad0873fca00a2e9939f4c` |
| 84 | `theorem` | [nhds_basis_eball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/nhds-basis-eball.md) | 633 | `result-track:564e2161553f926310cd9870fa1324dee1ff55a315c17db3ab48db943a235fff` |
| 85 | `theorem` | [nhdsWithin_basis_eball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/nhdswithin-basis-eball.md) | 637 | `result-track:1897a115b9c1660bacc903b28d29e7673e91c5faa968ced662a1ff1e28390b10` |
| 86 | `theorem` | [nhds_basis_closed_eball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/nhds-basis-closed-eball.md) | 641 | `result-track:069e5e33ef054c691ca4876d7ca1b4c3b0bc7cefe368caac56151c2ed805417d` |
| 87 | `theorem` | [nhdsWithin_basis_closed_eball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/nhdswithin-basis-closed-eball.md) | 645 | `result-track:2e9ef9d8322fe2c23de85c35fa64d70028d724cde565f526d9928f7ca951c80d` |
| 88 | `theorem` | [nhds_eq](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/nhds-eq.md) | 650 | `result-track:c7648679297e3424078a887f534106b39c42d6d3b9bd5c7adec587c694c06806` |
| 89 | `theorem` | [mem_nhds_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-nhds-iff.md) | 654 | `result-track:578174491368172ab5dcf0ec03b1fc1fd1edea83e3b7df0f032dddea27a31fe2` |
| 90 | `theorem` | [mem_nhdsWithin_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-nhdswithin-iff.md) | 658 | `result-track:c9268c0279d97d8c826e28a875260ed560e383ce1237e1c4084c7e1e10ce716d` |
| 91 | `theorem` | [tendsto_nhdsWithin_nhdsWithin](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendsto-nhdswithin-nhdswithin.md) | 666 | `result-track:b3576febf016eb1fcfabf9a6405b667240bd991b0f92a287eef6df9d16da3376` |
| 92 | `theorem` | [tendsto_nhdsWithin_nhds](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendsto-nhdswithin-nhds.md) | 674 | `result-track:1a31797f89bc521213641ebdec19c64058627a24a032e874b2335ebd6a07d4c2` |
| 93 | `theorem` | [tendsto_nhds_nhds](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendsto-nhds-nhds.md) | 681 | `result-track:bfa7240c0a25922e9a4a1359dc6a40e415e19db9de5e5e2e052f07e19c91e60f` |
| 94 | `theorem` | [isOpen_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/isopen-iff.md) | 688 | `result-track:810f7e0894c4226e81147b3449c78abc1272655162ec7085c5c477f03c986486` |
| 95 | `theorem` | [isOpen_ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/isopen-ball.md) | 692 | `result-track:3b6fc3d3ee584b21e3bf32d855a1fe7ca16cbfb895ec84701937bea9c2fbfaaf` |
| 96 | `theorem` | [isClosed_ball_top](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/isclosed-ball-top.md) | 696 | `result-track:b03be34747ef2999277875aa367dfdfff3e28af9efdd04c57ff943565bfad3b5` |
| 97 | `theorem` | [ball_mem_nhds](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-mem-nhds.md) | 702 | `result-track:3a4fb66e274925bb6608dee9b017e329ad2b2441129cc3babf86286906a025df` |
| 98 | `theorem` | [closedBall_mem_nhds](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/closedball-mem-nhds.md) | 706 | `result-track:d7c1e13719a6366f9029de83e0f25188834b33dffd0074837d27274b319675ae` |
| 99 | `theorem` | [ball_prod_same](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/ball-prod-same.md) | 710 | `result-track:d8cea87f491f6f79f055b982ab027398df9bcd651734d867a870f93325c43690` |
| 100 | `theorem` | [closedBall_prod_same](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/closedball-prod-same.md) | 715 | `result-track:28e830979489896b4d2827ea7a2e9ac24b5f46d2d7b8df681bdd8c3be085022d` |
| 101 | `theorem` | [mem_closure_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/mem-closure-iff.md) | 721 | `result-track:c9f9a8b42ed18c8f55f60ec2e4f7a7f24e28917f39e95536e8f89376ad3f0ae3` |
| 102 | `theorem` | [tendsto_nhds](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendsto-nhds.md) | 725 | `result-track:8cee89e75ac76c278a489996ffdf3ddfaae2c622f023312fbae792b9aaead7ad` |
| 103 | `theorem` | [tendsto_atTop](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/tendsto-attop.md) | 730 | `result-track:28eca71544e16b0c21163adeacfd8305baa6d05d545b7ebc98db7ea7befcf79a` |
| 104 | `theorem` | [inseparable_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/inseparable-iff.md) | 736 | `result-track:b69758761d69db6e9adc4abfa333328718808b7cc287dffd3dc02f9959956b07` |
| 105 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/cauchyseq-iff.md) | 743 | `result-track:1e3240c376ce00fbae1c4d7b28a2b035dec88fbd6f8452c19138873b351ab0fa` |
| 106 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/cauchyseq-iff-source-edition-2.md) | 749 | `result-track:7c3c9bc2ec8f6df017ed666283f074c425803f62c4c4d6501738773840ca9afd` |
| 107 | `theorem` | [cauchySeq_iff_NNReal](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/cauchyseq-iff-nnreal.md) | 756 | `result-track:e0e93588cc658709304ac7df35d00e0157666f0c4033471bf090c9e7cd935473` |
| 108 | `theorem` | [totallyBounded_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/totallybounded-iff.md) | 761 | `result-track:8e1c6c72da4c9c343283b1c06806b511c6957c123c9567032698a7151754b187` |
| 109 | `theorem` | [totallyBounded_iff'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/totallybounded-iff-source-edition-2.md) | 769 | `result-track:a7bcc83a1ac021eec497a055994695227dd410583e10b6db1825f17e27f63a6c` |
| 110 | `theorem` | [subset_countable_closure_of_almost_dense_set](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/subset-countable-closure-of-almost-dense-set.md) | 782 | `result-track:9e62adcc342e27cc706a43184691ab5c9445b26e494c5920b239b8de732d4f45` |
| 111 | `theorem` | [_root_.TopologicalSpace.IsSeparable.separableSpace](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/root-topologicalspace-isseparable-separablespace.md) | 815 | `result-track:fce42da4991a2070bdd5be5b2b2bfa32320f096b177be065a32b5d5191db7eeb` |
| 112 | `theorem` | [subset_countable_closure_of_compact](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/subset-countable-closure-of-compact.md) | 831 | `result-track:96198b44625a9f8a217fb8f0ffc34331138221c19af3cd424ec405d7b2ac4ab5` |
| 113 | `theorem` | [secondCountable_of_sigmaCompact](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/secondcountable-of-sigmacompact.md) | 848 | `result-track:bd57a1994d70e209bab1c1600ac71bcba7aeb4ca6ec8cb68974484f4e17212ff` |
| 114 | `theorem` | [secondCountable_of_almost_dense_set](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/secondcountable-of-almost-dense-set.md) | 859 | `result-track:0d681f52ea30e5b10b00738404e8e936961c4dffccfa13dc47ec7618a5e09d1d` |
| 115 | `def` | [diam](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam.md) | 874 | `declaration-track:59282913170e4ad5c77fdaa00fd3e9eae0053f0c692dd41a5ef73632f4e71e12` |
| 116 | `theorem` | [diam_eq_sSup](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-eq-ssup.md) | 878 | `result-track:138079e683321c971988d523a187acd77a9efc1637532427efe99e223306e7c0` |
| 117 | `theorem` | [diam_le_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-le-iff.md) | 880 | `result-track:95f8cf62e110d6d7d9ae43a7b45a32b1ba315b46205b878c9ae5653dd99b190d` |
| 118 | `theorem` | [diam_image_le_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-image-le-iff.md) | 884 | `result-track:1932000c173ff7272b129340e3c218f3a8ddc295b245e57d5c00f3ff659bb32b` |
| 119 | `theorem` | [edist_le_of_diam_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-of-diam-le.md) | 889 | `result-track:40b9c51a534e1dadc524c321a34a52b0cae4fa2caf912edc1f78e4ca5a7d93e9` |
| 120 | `theorem` | [edist_le_diam_of_mem](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-diam-of-mem.md) | 894 | `result-track:f89273041b4e4f962661a1c1b73823c297d05c5bb730c62716e30d3baa3ea7e2` |
| 121 | `theorem` | [diam_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-le.md) | 900 | `result-track:7970d887f6d04e064a600f909cdec83a78634b32c064ae3ff39a9ccae6a71c78` |
| 122 | `theorem` | [diam_subsingleton](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-subsingleton.md) | 905 | `result-track:76a8a7f5fff271c0119f491d992dce61d619eac7163995e10b74a7e68ef623d3` |
| 123 | `theorem` | [diam_empty](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-empty.md) | 911 | `result-track:e936cd0f72c1053e2081e3b68fa7a70533b07c6479fce4af44b069f09ada31f9` |
| 124 | `theorem` | [diam_singleton](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-singleton.md) | 917 | `result-track:6b1d06dca0377e627b5698749085f4ef3391893f0a4b7cb2000fad76e82034ae` |
| 125 | `theorem` | [diam_iUnion_mem_option](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-iunion-mem-option.md) | 921 | `result-track:88c305a653af04cb691d78e8104aef5f56e498ddfae3986d9381f2508170b7bf` |
| 126 | `theorem` | [diam_insert](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-insert.md) | 925 | `result-track:c0b442902b800811fed2653c95fa15d38a2a2b1b15a43cf4424273819e81d3cc` |
| 127 | `theorem` | [diam_pair](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-pair.md) | 931 | `result-track:a0c5c2ac84d69c99b2ee0b0a6c87265280bd756f17a9be2b195e7d0739a30907` |
| 128 | `theorem` | [diam_triple](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-triple.md) | 935 | `result-track:70313b5f1de95de365e853b0507692112b0d6375267fef4da8bfc35749b92db7` |
| 129 | `theorem` | [diam_mono](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-mono.md) | 941 | `result-track:e96462e0a4702c77fe71fe34106e854f832855a3b90085befd7e98e3625a2cd7` |
| 130 | `theorem` | [diam_union](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-union-source-edition-2.md) | 947 | `result-track:d3a1fcd9f7fb7610f07171eefdee422607da3e11f37768a8845aebdb06606c9b` |
| 131 | `theorem` | [diam_union'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-union.md) | 968 | `result-track:3425d0c04c500ce04fef59ea65a33cb43067df3101e0c0d2ed8e832c97d01b87` |
| 132 | `theorem` | [diam_closedBall](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-closedball.md) | 973 | `result-track:ce41c7a5fc13bf8fd017f2739ec01f52ded5fb0e26ece5bbd0e8192a718a1eb6` |
| 133 | `theorem` | [diam_ball](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-ball.md) | 981 | `result-track:bb3214b2503f0d7332679821b6200312feff45654e782e3f72700537bcd6cdb6` |
| 134 | `theorem` | [diam_pi_le_of_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-pi-le-of-le.md) | 985 | `result-track:8435d7bbe4b7ce05ea6fc983c90defa7d3ce0ad5fc630de99c2b25a1283bba1d` |
| 135 | `class` | [EMetricSpace](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetricspace.md) | 998 | `declaration-track:1ae78e218f2ea0fcdf241daf4d1f4656dee44e05a0b8ee8d6baeb8ecc1ee7444` |
| 136 | `theorem` | [edist_eq_zero](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-eq-zero.md) | 1008 | `result-track:c05202ad9e2cf555736a55b8c036e2c42ce889c792abff98c0b763b79d09a606` |
| 137 | `theorem` | [zero_eq_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/zero-eq-edist.md) | 1013 | `result-track:700b4e83ba32d4499459393696c95b20fd0c62c3387ababddb62a09f265aab70` |
| 138 | `theorem` | [edist_le_zero](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-le-zero.md) | 1016 | `result-track:3e1b2f241122534d3ad1717f48ac288def9cc9b0b2088f65673f5d4ee8cb20df` |
| 139 | `theorem` | [edist_pos](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-pos.md) | 1021 | `result-track:a3442996a350cfcfb8c924fbeb48503fd9ca9da0b76c05a583783a330e50df29` |
| 140 | `theorem` | [eq_of_forall_edist_le](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/eq-of-forall-edist-le.md) | 1025 | `result-track:df44cdc043c6607c1762ca1a323c1ea73811f0b91af298ef3e6221e51a05f9e2` |
| 141 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-10.md) | 1031 | `declaration-track:645ff9a3d7b2b99e18e0a3bea417f4a15ac81f66c494fb3827f57f44e1da8f78` |
| 142 | `theorem` | [EMetric.uniformEmbedding_iff'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetric-uniformembedding-iff.md) | 1038 | `result-track:940db85e7a66181126fc65b409d0455720272351d59c61a17857b9f5eed1349d` |
| 143 | `def` | [EMetricSpace.ofT0PseudoEMetricSpace](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetricspace-oft0pseudoemetricspace.md) | 1047 | `declaration-track:a6b161db0815e44b81476e86f565ffb2aa38945476c26688c5d90663a7804b97` |
| 144 | `def` | [EMetricSpace.replaceUniformity](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetricspace-replaceuniformity.md) | 1059 | `declaration-track:722b667fbaf460be985a41f0ada47372d0872df5c080fdee07671de75c0f8a18` |
| 145 | `def` | [EMetricSpace.induced](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetricspace-induced.md) | 1071 | `declaration-track:09bc29357ddae11eae975ed17ef32d38c8e4e7467366be5b3c576ad2b22700eb` |
| 146 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-9.md) | 1078 | `declaration-track:62fe8c80b98721122214860e4bf431ff007b3b9a42042c6660eccc3a11cde00c` |
| 147 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-18.md) | 1083 | `declaration-track:d538359aa176daa891afa110361750042e154cd254f4b4b94ea2c7e0c6fcebfe` |
| 148 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-13.md) | 1086 | `declaration-track:abb9871d19de699b53906eaa39d62399a9758fb71b63e29a95494f3ab8d4b470` |
| 149 | `instance` | [Prod.emetricSpaceMax](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/prod-emetricspacemax.md) | 1092 | `declaration-track:ad225c94e78449fe470c7c9586ca8fa3a7a948cea0c7ccb8338c53e73db166bd` |
| 150 | `theorem` | [uniformity_edist](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformity-edist.md) | 1097 | `result-track:0c18b393698f7fa9ce2b4b47f9806d7730b475330aa0c65d18855a6045522367` |
| 151 | `instance` | [emetricSpacePi](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/emetricspacepi.md) | 1112 | `declaration-track:b374f8a103cecd21bc7af433f38e08484d8f973c681be1ecbb4d0af8128097a7` |
| 152 | `theorem` | [countable_closure_of_compact](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/countable-closure-of-compact.md) | 1121 | `result-track:0db423e4ae025cd3f89e4d98c1cff8cf92c5d199fbd31363f187d797b6b74795` |
| 153 | `theorem` | [diam_eq_zero_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-eq-zero-iff.md) | 1131 | `result-track:3250c5d682e178fb5a109f54cdedfd19bcb3bc20bc0e81179c203f3feedef3ad` |
| 154 | `theorem` | [diam_pos_iff](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-pos-iff.md) | 1135 | `result-track:ff07c4423c741ff4e232adeef1cf7fe5e8fc57aeca0f9e485ca420188a72e71b` |
| 155 | `theorem` | [diam_pos_iff'](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/diam-pos-iff-source-edition-2.md) | 1138 | `result-track:ff4b93af5c29e46b16128d8a32b6c06a9b85679391914680016638de269e0a45` |
| 156 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-17.md) | 1150 | `declaration-track:d290d136fa8bd3e275e9ac26aad000181555c0c3f95455e7c03a9867ecf6f8c2` |
| 157 | `theorem` | [UniformSpace.SeparationQuotient.edist_mk](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/uniformspace-separationquotient-edist-mk.md) | 1156 | `result-track:166a5157151394d400984e7088c58ad20e51879655ebbecf84a7676de44f68f0` |
| 158 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-8.md) | 1161 | `declaration-track:3f2f135626d0f26f3627b9fdacb5145b972c472d06d3f690997ccb6ffb07d297` |
| 159 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-4.md) | 1188 | `declaration-track:137c450ba37e9287df2c40ff4a574085db4a2b2e7aaaa7a7762d0c54812709c7` |
| 160 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-5.md) | 1189 | `declaration-track:1699d6d159e83b41677b1839d1086f0fd5f8d610b8497f8ade69ef52c32eeb12` |
| 161 | `theorem` | [edist_ofMul](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-ofmul.md) | 1192 | `result-track:7ae1ffaf3c19e77a0dd9449e65a863efbf4678830eb2133ad64757001f0d9c08` |
| 162 | `theorem` | [edist_ofAdd](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-ofadd.md) | 1197 | `result-track:332b41acedfb710b47c472a598aec1b63fc12a2c0d0a004dc677eaaae08910b3` |
| 163 | `theorem` | [edist_toMul](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-tomul.md) | 1202 | `result-track:b9107fd5532a4dfe52ee25163865c37a81087e3409627a985409b146e6169331` |
| 164 | `theorem` | [edist_toAdd](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-toadd.md) | 1207 | `result-track:5bbe394ae9f33dc05fa0bda392416236a7946fdaa798427dc98312f78cd6a34d` |
| 165 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-6.md) | 1213 | `declaration-track:2754d9cfd68948d492e3cea3320724b3388e11ff28f3a37d9d4664cdc42f90d1` |
| 166 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-2.md) | 1214 | `declaration-track:1059fba43aae7b429bae9d2c62216e70af9f79bc3dc523d1f5c9296addd729f4` |
| 167 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-19.md) | 1215 | `declaration-track:dbe92f8c3ebdef4b0515372c9e9033b7ac12774eb865210fdb34694bd1a2a372` |
| 168 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-16.md) | 1216 | `declaration-track:c7296259c908b3572796cb66d624271a9d9e5a4ec49ff8548d5098abaaff4391` |
| 169 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance.md) | 1231 | `declaration-track:04ef7bef2dd0b32b71b2c627710d3cace06249744fe01a76d4fc5f6f3a86c011` |
| 170 | `theorem` | [edist_toDual](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-todual.md) | 1234 | `result-track:402359a0b6ea0679e6b6f50d6fcf3319d85237344d512b5fe6b5d786d0a2fd4f` |
| 171 | `theorem` | [edist_ofDual](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/edist-ofdual.md) | 1239 | `result-track:017a9e1df5c81ab8a38ee99fc607b7fe473a3e19e39a1e5a2acd1b5e73abe371` |
| 172 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-7.md) | 1245 | `declaration-track:3e729dbc1f29d490d11074676197e3c4d1f396c149f514fd075482c6c2296d8f` |
| 173 | `instance` | [(anonymous)](../../../../GeneralTopology/EMetricSpaceBasicUniformityDistOfMemUniformity.lean/declarations/instance-source-edition-15.md) | 1246 | `declaration-track:bec052003ec5b0d7884a83a9f2fe49356f15f8aed8c8573c905e8970e0d6eec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0fb3681367947e891629605c9a4089570114e96037f19b137d4b395024fe665a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Basic/Variant400e7b040f4a20493ae86a76ad8753f949c2c59ae67e98adc0ccb77d11f2c6d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
