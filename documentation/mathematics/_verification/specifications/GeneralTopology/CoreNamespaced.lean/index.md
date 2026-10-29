# Verification target: Core Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e9ab30619171f615c16819c7ce58c3bc16159a9",
  "lexical_observation_count": 123,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CoreNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/CoreNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e9ab30619171f615c16819c7ce58c3bc16159a9`.

Source path: `GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean.json)

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
| 1 | `inductive` | [BitSiteValue](../../../../GeneralTopology/CoreNamespaced.lean/declarations/bitsitevalue.md) | 21 | `declaration-track:3f14b807ae27035089e6c842306b7b6501fad5e766f5d4aacee6c35431d2676c` |
| 2 | `inductive` | [BinaryBit](../../../../GeneralTopology/CoreNamespaced.lean/declarations/binarybit.md) | 27 | `declaration-track:1c57f3d8abdf3f1ae60aa078d9f56214124c9a69a7b3bd91537d674b143736f8` |
| 3 | `def` | [BinaryBit.toSite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/binarybit-tosite.md) | 32 | `declaration-track:2f944c9f4248f8a6b1648d7c6b798b395dc20c2d658da1f578ec253c8882768e` |
| 4 | `def` | [expand2](../../../../GeneralTopology/CoreNamespaced.lean/declarations/expand2.md) | 36 | `declaration-track:886a91f19e85918dcf8b27e8865dbf7fc852b6e1c1d446f1bab779d57beaa867` |
| 5 | `def` | [expand_pair](../../../../GeneralTopology/CoreNamespaced.lean/declarations/expand-pair.md) | 41 | `declaration-track:dfeec52f56b5b5281e5ac5c95d1e98da925ebdd6ea6dea2ad4cd2477d8f6fc36` |
| 6 | `structure` | [FourBlock](../../../../GeneralTopology/CoreNamespaced.lean/declarations/fourblock.md) | 47 | `declaration-track:116bd43e0d0ee4d8b26a42958a0f83520066df7200c1061c11358f82056d441f` |
| 7 | `def` | [zero4](../../../../GeneralTopology/CoreNamespaced.lean/declarations/zero4.md) | 54 | `declaration-track:6260c04e79ff2766926d4c65ab594e4c6e5972ce19f305ef80f6c2eadfccebbb` |
| 8 | `def` | [one4](../../../../GeneralTopology/CoreNamespaced.lean/declarations/one4.md) | 57 | `declaration-track:905ffaa96bc2a4a7beca6515757a978471c803c669a5f98a3b8d801c7ab3e9fe` |
| 9 | `def` | [classify4](../../../../GeneralTopology/CoreNamespaced.lean/declarations/classify4.md) | 60 | `declaration-track:4a68f53f23b4e7742e7638955eaa53b1c8072d41da2a716e10cf44c2feb64b00` |
| 10 | `inductive` | [Transition](../../../../GeneralTopology/CoreNamespaced.lean/declarations/transition.md) | 68 | `declaration-track:7164e9a01c23760c7f70e2694e7483e89873d0b09c7246c9bdb08ed89ccbc0d5` |
| 11 | `def` | [contributes_to_grey](../../../../GeneralTopology/CoreNamespaced.lean/declarations/contributes-to-grey.md) | 76 | `declaration-track:396b96b33442dd12aa74cd476e7508e6682ea3ce155504aeb9ee7312f5cbec66` |
| 12 | `structure` | [ProjectionFrame](../../../../GeneralTopology/CoreNamespaced.lean/declarations/projectionframe.md) | 80 | `declaration-track:f12400851711ad3a36e94ad7ff632fef6d6e40b1d35e2d8a77da40ceabdb7874` |
| 13 | `def` | [Open](../../../../GeneralTopology/CoreNamespaced.lean/declarations/open.md) | 88 | `declaration-track:1d162a1d5e7dfefb0e22986254cb91ca7943d8d5485bd4825727514a7e41dfb4` |
| 14 | `def` | [ExplicitNullification](../../../../GeneralTopology/CoreNamespaced.lean/declarations/explicitnullification.md) | 91 | `declaration-track:1fce24930eeffde2f45766978fdf957aca4be7e28313e7837a28a64d816cdf9a` |
| 15 | `def` | [Close](../../../../GeneralTopology/CoreNamespaced.lean/declarations/close.md) | 94 | `declaration-track:a3db030ccc0ec75666cb93aa18c95974f2ae60d3d814db078667948ff4d58074` |
| 16 | `def` | [AllZero](../../../../GeneralTopology/CoreNamespaced.lean/declarations/allzero.md) | 97 | `declaration-track:e072a05e935fceddff219aa45fccc8269188893f59e081b4dd58d847a598a690` |
| 17 | `def` | [Nulliant](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant.md) | 100 | `declaration-track:7b54bcc01404877d502c54966176d5749befbb7c1b894f9270f1e7f292435e3a` |
| 18 | `def` | [WellFormedFrame](../../../../GeneralTopology/CoreNamespaced.lean/declarations/wellformedframe.md) | 103 | `declaration-track:788ef6575208c1784b61316b8f0c5cc8c26da9ce58406795fa49e1506ddb9e9b` |
| 19 | `def` | [exactly_one](../../../../GeneralTopology/CoreNamespaced.lean/declarations/exactly-one.md) | 106 | `declaration-track:8b716a165e747dccadad7f132339c29c5a1165d44f5dd3079ae68aec71382cbd` |
| 20 | `def` | [grey](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey.md) | 109 | `declaration-track:d9aee090d898f401c4de58d0d184fa1292466097dcda174bb1edde7ea0b51e83` |
| 21 | `structure` | [GreyFlipCovariant](../../../../GeneralTopology/CoreNamespaced.lean/declarations/greyflipcovariant.md) | 112 | `declaration-track:64ecf1aa6b9819585013e3072080c6b03e21477a0ddef4a20e139596080b830e` |
| 22 | `def` | [smoothGrey](../../../../GeneralTopology/CoreNamespaced.lean/declarations/smoothgrey.md) | 118 | `declaration-track:6b79981cc4e547b7e6ac62f0e2a0add794aab52da98bccc256eda70b53ce4b83` |
| 23 | `def` | [seededScatter](../../../../GeneralTopology/CoreNamespaced.lean/declarations/seededscatter.md) | 121 | `declaration-track:0284393fae806e967fc43950c6f66d4daa37e92cd205d9f56ed1fd32a3033750` |
| 24 | `def` | [halfsiteMarkers](../../../../GeneralTopology/CoreNamespaced.lean/declarations/halfsitemarkers.md) | 124 | `declaration-track:f315b1594a67564731a6738ac864a444d506da572aa26eb867158f915fc27eb2` |
| 25 | `structure` | [NulliantCompactification](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliantcompactification.md) | 127 | `declaration-track:185f31e3532b4223a8abad954f09a6803041df24123d3a0a806d2d9f3bec9306` |
| 26 | `def` | [compactify_nulliant](../../../../GeneralTopology/CoreNamespaced.lean/declarations/compactify-nulliant.md) | 132 | `declaration-track:200f6be05af1e833698e445016bf9ba3c76ea7d2ce779ca5c3bc0dc98435a28b` |
| 27 | `def` | [reexpand](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reexpand.md) | 137 | `declaration-track:f91ee154984d70a22b1b924c66c770a641a1b1693fbc9b7afa5d8422af77985e` |
| 28 | `def` | [boundary_input](../../../../GeneralTopology/CoreNamespaced.lean/declarations/boundary-input.md) | 140 | `declaration-track:e8aa2eee6f582cb023185d464f90ba4ddaa1510af2794f3cadeeef7ff3f21c79` |
| 29 | `def` | [emits_ordinary_residue](../../../../GeneralTopology/CoreNamespaced.lean/declarations/emits-ordinary-residue.md) | 143 | `declaration-track:c4a0265fe8c1d2e85b71417952518df6cd53cf4cc888f011b6a6e97ec62281d9` |
| 30 | `def` | [emits_partition_yaml](../../../../GeneralTopology/CoreNamespaced.lean/declarations/emits-partition-yaml.md) | 146 | `declaration-track:d4ca10792b0518775b60a6969cf7b4f9459b2f8bf5c8c4196f28d1e9e53031f1` |
| 31 | `def` | [closeHalfSiteWitness](../../../../GeneralTopology/CoreNamespaced.lean/declarations/closehalfsitewitness.md) | 149 | `declaration-track:ca79164578bd66de4b27f29a8df5d1f7990d352a37aafda482cafde4cd9cec1a` |
| 32 | `structure` | [FrequencyCandidate](../../../../GeneralTopology/CoreNamespaced.lean/declarations/frequencycandidate.md) | 152 | `declaration-track:b640a60c56f41a726b2bf8aa35fac3b87503988f726a675a9ab4b9564e34f5bd` |
| 33 | `def` | [reset_candidate](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reset-candidate.md) | 160 | `declaration-track:e014257db2f4801ed68da729921608d6df8035d033a2353424f48be3fe5981d2` |
| 34 | `def` | [reset_frequencies](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reset-frequencies.md) | 166 | `declaration-track:53aede693729dd815e151bf849e5d4267818b025c57b352cf226dbc03c6069a8` |
| 35 | `def` | [reference_reset_table](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reference-reset-table.md) | 169 | `declaration-track:f9bc2e9411202a1d707c2a9985115d102771dc9cac090976929109abaa0fb2d9` |
| 36 | `structure` | [WitnessSemantics](../../../../GeneralTopology/CoreNamespaced.lean/declarations/witnesssemantics.md) | 172 | `declaration-track:3a3635f681f330e09e1116a4b66e6c3278c60a780096feecdf0d87c2d584795d` |
| 37 | `structure` | [Witness](../../../../GeneralTopology/CoreNamespaced.lean/declarations/witness.md) | 177 | `declaration-track:86e7c4b90e9c37294feb606c202a5b10467c3a1a3e6744361ff8a1a848f5b1e9` |
| 38 | `structure` | [AppleBand](../../../../GeneralTopology/CoreNamespaced.lean/declarations/appleband.md) | 181 | `declaration-track:ebe33a722ecd64440a3ff422e2ceaf1429252857fa409c0e71d7716e34ebda48` |
| 39 | `structure` | [ApplePayload](../../../../GeneralTopology/CoreNamespaced.lean/declarations/applepayload.md) | 185 | `declaration-track:16b21bdb3221215e560c777c6d6299944621e33df0215a119be4f4eef1d93960` |
| 40 | `def` | [export_to_apple](../../../../GeneralTopology/CoreNamespaced.lean/declarations/export-to-apple.md) | 189 | `declaration-track:2fdd64623f011c749ac732d180c8d2868690fe422cd3355ff76d19ee4bd55179` |
| 41 | `def` | [witness_semantics](../../../../GeneralTopology/CoreNamespaced.lean/declarations/witness-semantics.md) | 192 | `declaration-track:65bad492f956697409bdfc02b2d66f1258b11dfb33d2bb8e0220ab155408617b` |
| 42 | `def` | [payload_semantics](../../../../GeneralTopology/CoreNamespaced.lean/declarations/payload-semantics.md) | 195 | `declaration-track:af675e5c5beac77d76025c2c719d5d6eafc1669d8f7d747e8ec2275fdeffe192` |
| 43 | `structure` | [AdjacencyOperator](../../../../GeneralTopology/CoreNamespaced.lean/declarations/adjacencyoperator.md) | 198 | `declaration-track:ede66ed6f01b5eedc1f7b8c1b5f5547c2319c1e80ea9bcc88f8caeabe8555172` |
| 44 | `def` | [adjacencySpectrum](../../../../GeneralTopology/CoreNamespaced.lean/declarations/adjacencyspectrum.md) | 202 | `declaration-track:a9ee37f427dce300cbd8d7c7c3868bd761febef5f92ad392170ed9d6b4c9f25e` |
| 45 | `structure` | [BoundaryPartition](../../../../GeneralTopology/CoreNamespaced.lean/declarations/boundarypartition.md) | 205 | `declaration-track:b30677779b899731fa2c62ec9bdf523ba2584e157258fe85c6c93e4413a6800b` |
| 46 | `structure` | [FiniteTubeCover](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finitetubecover.md) | 209 | `declaration-track:d46ca45ec03fc29ce9fb5f67b5b39235cd97e9b373b7018717015dbf725ba9bb` |
| 47 | `structure` | [FinitePrismCover](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finiteprismcover.md) | 213 | `declaration-track:b8bfe6283b26f027701b38fa3bd9d2398eb2d0d652e34dade3dfa61b333881c0` |
| 48 | `def` | [finiteTubeCoverDefined](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finitetubecoverdefined.md) | 217 | `declaration-track:983f0fcd335ea7af93563601de8ce5ad330ac7221a67cf4a5a7e2a21310daa32` |
| 49 | `def` | [finitePrismCoverDefined](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finiteprismcoverdefined.md) | 220 | `declaration-track:b72ba8358613644527e8cadd438160b1365284de71075830474e7ab684ca1015` |
| 50 | `def` | [boundedNonClustering](../../../../GeneralTopology/CoreNamespaced.lean/declarations/boundednonclustering.md) | 223 | `declaration-track:a425a17ed19578de8cb5e66b52148805e8cdec7a7103c429ce9001c0013ea6ec` |
| 51 | `def` | [reexpandPartition](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reexpandpartition.md) | 226 | `declaration-track:ebe9cfaa223e43ab23ac1a4f525e304e3cc0a9aa7a2edfec476b081bcbe1a323` |
| 52 | `def` | [reexpandNulliantPartition](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reexpandnulliantpartition.md) | 229 | `declaration-track:5fc33af862cf55c3613872d1eda665db724cfef5decdff283b175255fa2cf909` |
| 53 | `def` | [macroGrowth](../../../../GeneralTopology/CoreNamespaced.lean/declarations/macrogrowth.md) | 232 | `declaration-track:6cfb07e6f0398719cbd60efe3e3cc6b468548688aaf7a9560c69d5db78077b3c` |
| 54 | `def` | [greyValuesFromWitnesses](../../../../GeneralTopology/CoreNamespaced.lean/declarations/greyvaluesfromwitnesses.md) | 235 | `declaration-track:0fe910ddf83409ffa490425303b4b841ffe5265c3042a332888e60fc375309e8` |
| 55 | `def` | [grey_average](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-average.md) | 238 | `declaration-track:6a662bbfae92d9864d7f91eb3ea012384047ba6820fe40caf2b013e7b3b8d212` |
| 56 | `def` | [grey_cover](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-cover.md) | 241 | `declaration-track:5127e50fb92f03817ad5732f04b97ac18ef35d11ce2644ecbd19a3e99aac277a` |
| 57 | `def` | [modularLociFromAdjacency](../../../../GeneralTopology/CoreNamespaced.lean/declarations/modularlocifromadjacency.md) | 244 | `declaration-track:e6232b7a1a779b4acd966a78ef48c6e699078e172935a9f061462ccd33d0f1f2` |
| 58 | `def` | [modularLociFromWitnesses](../../../../GeneralTopology/CoreNamespaced.lean/declarations/modularlocifromwitnesses.md) | 248 | `declaration-track:5ccb641f21c2ef44f21d5d6d335c87854d46d0dbe40fc22fa2f5028073220b88` |
| 59 | `def` | [finite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finite.md) | 251 | `declaration-track:0ccdd06b75a6e55a45a00e5136bf76752de8b821dfbfa54aab5e8337c67a00b4` |
| 60 | `def` | [dirichlet_bit_convolution](../../../../GeneralTopology/CoreNamespaced.lean/declarations/dirichlet-bit-convolution.md) | 254 | `declaration-track:a7e0201fa295379f6d991863b09e78b42addd9dd4d1a66ec93fcbd06c558dcd2` |
| 61 | `def` | [dirichlet_mobius_bit_convolution](../../../../GeneralTopology/CoreNamespaced.lean/declarations/dirichlet-mobius-bit-convolution.md) | 257 | `declaration-track:5cb2a0c2d6701c8bc6d22e63155b42a42b4a23e1de367566dc220cb4354832bc` |
| 62 | `def` | [update_frequency](../../../../GeneralTopology/CoreNamespaced.lean/declarations/update-frequency.md) | 260 | `declaration-track:6dbaec97af4fceaab9b18295d49e4b9cddf56e6d58692135f04d46b280281f64` |
| 63 | `def` | [update_symbolic_frequency](../../../../GeneralTopology/CoreNamespaced.lean/declarations/update-symbolic-frequency.md) | 263 | `declaration-track:10427748aa7f587d6affed383d2ea8025f224683ac68b759efd4c02e9ca4498f` |
| 64 | `def` | [reset](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reset.md) | 266 | `declaration-track:e8d679d7cbfe43df0aa482d09221c168201767893484a8f7b17b39105d80476c` |
| 65 | `structure` | [PntReferenceCalculation](../../../../GeneralTopology/CoreNamespaced.lean/declarations/pntreferencecalculation.md) | 269 | `declaration-track:4724dc440508bcb0eef23aa1a76109ef85e5e15e861f2362d5de97eaf4b0c4c8` |
| 66 | `def` | [uses_checked_theorem_ref](../../../../GeneralTopology/CoreNamespaced.lean/declarations/uses-checked-theorem-ref.md) | 273 | `declaration-track:fa45f7f10195c3fab1d7c6316d82c6ed3ae1124d20e4e8511beca3e44af2e88a` |
| 67 | `def` | [uses_pnt_reference](../../../../GeneralTopology/CoreNamespaced.lean/declarations/uses-pnt-reference.md) | 276 | `declaration-track:2681faa62c964be9650e7f7ae5b907f64017f4f7b4e3daee459f840835e70157` |
| 68 | `def` | [does_not_prove_pnt](../../../../GeneralTopology/CoreNamespaced.lean/declarations/does-not-prove-pnt.md) | 279 | `declaration-track:a59d02ca96eb63aae397aed24d6bd9ec39dda4c16e7c432db69b64ab0de16f5d` |
| 69 | `def` | [runtime_diagnostic_only](../../../../GeneralTopology/CoreNamespaced.lean/declarations/runtime-diagnostic-only.md) | 282 | `declaration-track:15c8662654a4f56d6df0847c1564a2aa55f7b2f79bfdb90351a4134c9d5926d3` |
| 70 | `theorem` | [symmetric_expand_zero](../../../../GeneralTopology/CoreNamespaced.lean/declarations/symmetric-expand-zero.md) | 285 | `result-track:cc81cf352fb5e1c34753e594435e64efc7f0e1817d42f6c03c1a5d83119c8180` |
| 71 | `theorem` | [symmetric_expand_one](../../../../GeneralTopology/CoreNamespaced.lean/declarations/symmetric-expand-one.md) | 288 | `result-track:a042022d8bd890377cbba3c114fbb99895e2692ebe8a476d69566f5fb0b3e502` |
| 72 | `theorem` | [mixed_pair_maps_halfsite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/mixed-pair-maps-halfsite.md) | 291 | `result-track:10bd04de5fed9af1c8f9e6ecaa6f5a72822308d9b6f3d732a82031ae27d3e98c` |
| 73 | `theorem` | [mixed_block_maps_to_unique_halfsite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/mixed-block-maps-to-unique-halfsite.md) | 295 | `result-track:beef664941d583129fb8aca1fd13213b32f321acb6647b49581e2c6cf973de4d` |
| 74 | `theorem` | [mixed_four_block_maps_halfsite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/mixed-four-block-maps-halfsite.md) | 299 | `result-track:0d96017e136db868f5fa452df69a2c532b0f771a2d8e70f3e6c6efa4c3f3ccd1` |
| 75 | `theorem` | [grey_from_high_to_low_only](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-from-high-to-low-only.md) | 306 | `result-track:9d32aa6844b2d35083242301402d0be66f61fb9eb932f1abc70fa60b90bca0e5` |
| 76 | `theorem` | [grey_average_uses_only_high_to_low](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-average-uses-only-high-to-low.md) | 310 | `result-track:132af467471cd6278c98be12a2726502fb5946a68349bc72b2ced6ddb4aa70ce` |
| 77 | `theorem` | [grey_cover_uses_only_high_to_low](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-cover-uses-only-high-to-low.md) | 314 | `result-track:3960685acc6014fd47346eec0b36209c8e8ec4e89929b04b8c7bd25b20b5fc18` |
| 78 | `theorem` | [grey_ignores_zero_to_one_and_static_bits](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-ignores-zero-to-one-and-static-bits.md) | 318 | `result-track:6e466f64ece727b5987d090cb6a3b0a1cc1919642b82d1c4367d6ced7869885f` |
| 79 | `theorem` | [zero_to_one_not_grey](../../../../GeneralTopology/CoreNamespaced.lean/declarations/zero-to-one-not-grey.md) | 336 | `result-track:03b637d5b6c0ad3c5a19586d9a59b039aa16a7291b33d3badd87d403cdcc249b` |
| 80 | `theorem` | [static_not_grey](../../../../GeneralTopology/CoreNamespaced.lean/declarations/static-not-grey.md) | 342 | `result-track:788f316e88b2cbc44efa008ef9ccbb2467a6d9b3899c7c30b31d16b5921be76b` |
| 81 | `theorem` | [projection_state_trichotomy](../../../../GeneralTopology/CoreNamespaced.lean/declarations/projection-state-trichotomy.md) | 354 | `result-track:0d314ab6ef8d8344d3fb093731a1b134a14627f6a752344b0ce721917997841e` |
| 82 | `theorem` | [open_iff_positive_signed_adjacency](../../../../GeneralTopology/CoreNamespaced.lean/declarations/open-iff-positive-signed-adjacency.md) | 362 | `result-track:b996cf56cdf205d5ef5699faf35864da9304b5bd0ab9543f29a5e7ce1f82c663` |
| 83 | `theorem` | [close_requires_explicit_nullification](../../../../GeneralTopology/CoreNamespaced.lean/declarations/close-requires-explicit-nullification.md) | 366 | `result-track:fd6d05715328bdd3d1cb5a9a97202b13d9c4948987a7f8d995564a057f055643` |
| 84 | `theorem` | [all_zero_without_close_is_nulliant](../../../../GeneralTopology/CoreNamespaced.lean/declarations/all-zero-without-close-is-nulliant.md) | 371 | `result-track:c880da868c230ed0d590769261ccb8dc569c6695691ac260edf57f5ad1b84b2d` |
| 85 | `theorem` | [zero_frame_implies_nulliant_unless_explicit_close](../../../../GeneralTopology/CoreNamespaced.lean/declarations/zero-frame-implies-nulliant-unless-explicit-close.md) | 381 | `result-track:2639b4d1bd6b78661f50530700aa82d29b24a672f5807ea3f1716ce16bb99bd7` |
| 86 | `theorem` | [close_maps_to_halfsite_before_termination](../../../../GeneralTopology/CoreNamespaced.lean/declarations/close-maps-to-halfsite-before-termination.md) | 385 | `result-track:2f3579a5c06c3fad78b1031ea5c7fbca08aa0328a94b3616fc45e587e4ecfda8` |
| 87 | `theorem` | [ordinary_residue_only_open](../../../../GeneralTopology/CoreNamespaced.lean/declarations/ordinary-residue-only-open.md) | 390 | `result-track:78f7b3e65c42012b48c3d6b5d4cd0f847c338eaad01639f62de789d5f0c05804` |
| 88 | `theorem` | [close_emits_no_ordinary_residue](../../../../GeneralTopology/CoreNamespaced.lean/declarations/close-emits-no-ordinary-residue.md) | 395 | `result-track:67427b2ba19f4a1b96a116a14e0b0257c25be08e612efcaa774c7f4427218126` |
| 89 | `theorem` | [nulliant_partition_roundtrip](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant-partition-roundtrip.md) | 403 | `result-track:9bd595dfd50e49e121aa1134831c826f4c504ffe44686c95c40363fb48a6abd3` |
| 90 | `theorem` | [nulliant_yaml_reexpansion_roundtrip](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant-yaml-reexpansion-roundtrip.md) | 407 | `result-track:d4576287d278aa6df048f380b9fe5a0a533e01a456f30a1e132337ecdc839511` |
| 91 | `theorem` | [nulliant_partition_preserves_zero_one_halfsite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant-partition-preserves-zero-one-halfsite.md) | 411 | `result-track:111e45be439281e86dc70443ce9d823f31ee312abbff269632344dd089cfb95e` |
| 92 | `theorem` | [symbolic_frequency_reset](../../../../GeneralTopology/CoreNamespaced.lean/declarations/symbolic-frequency-reset.md) | 415 | `result-track:4f78a1a537eac653505cc6681a06223bc36c214027d31d10c7563121b9824fdb` |
| 93 | `theorem` | [frequency_reset_restores_reference_table](../../../../GeneralTopology/CoreNamespaced.lean/declarations/frequency-reset-restores-reference-table.md) | 419 | `result-track:0f1ea589550821f9cb2e825b72eb10342def4f466c5d4ac141aba1922be76679` |
| 94 | `theorem` | [bit_convolution_finite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/bit-convolution-finite.md) | 423 | `result-track:9514abdd31782e623c5d56168dfb21c9f470d6a4490a4f2f6052798a7a2f0813` |
| 95 | `theorem` | [finite_bit_convolution_is_finite](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finite-bit-convolution-is-finite.md) | 428 | `result-track:66ef91ad6ab938447b7bcb63153874a57bdc8a6c61643cfd937c67d6fcaf8bd1` |
| 96 | `theorem` | [frequency_update_symbolic_only](../../../../GeneralTopology/CoreNamespaced.lean/declarations/frequency-update-symbolic-only.md) | 433 | `result-track:8ad47872a5948d5bff6d1f5d3ad54d894c47d24863362c376b731961a9a7b5e2` |
| 97 | `theorem` | [symbolic_frequency_reference_immutable](../../../../GeneralTopology/CoreNamespaced.lean/declarations/symbolic-frequency-reference-immutable.md) | 442 | `result-track:af2cc5ae5bc3315a1d0ba76025346f4c1f2429afa1f9d013033276792a5faf80` |
| 98 | `theorem` | [frequency_candidate_update_cites_boundary_witness](../../../../GeneralTopology/CoreNamespaced.lean/declarations/frequency-candidate-update-cites-boundary-witness.md) | 451 | `result-track:e98dacd8a4780d0c252aac55d808b0865584e901ed832c5df82949fdf9780efe` |
| 99 | `theorem` | [reset_restores_reference_frequency](../../../../GeneralTopology/CoreNamespaced.lean/declarations/reset-restores-reference-frequency.md) | 458 | `result-track:28c60c7cd4e2d8e0b892ebe6055d8e8be79a61bae650e96e67869c3dbf8e15ee` |
| 100 | `theorem` | [pnt_reference_is_metadata](../../../../GeneralTopology/CoreNamespaced.lean/declarations/pnt-reference-is-metadata.md) | 462 | `result-track:fd6cf4c8f8b2c25211f946317b9827f4b70dce799a6d9bb4ef79ff2e968c396f` |
| 101 | `theorem` | [pnt_cover_does_not_prove_pnt](../../../../GeneralTopology/CoreNamespaced.lean/declarations/pnt-cover-does-not-prove-pnt.md) | 467 | `result-track:e70e0644360fb1ef86212eb6bb03a1b8091582def45b45e9f4a1f3c0c13f4a86` |
| 102 | `theorem` | [apple_band_semantics_read_only](../../../../GeneralTopology/CoreNamespaced.lean/declarations/apple-band-semantics-read-only.md) | 472 | `result-track:31f929bfebda363e74a0ecaecaad7855ea9824c0eb7f33db8ef5776a7c9381da` |
| 103 | `theorem` | [apple_authority_cover_read_only](../../../../GeneralTopology/CoreNamespaced.lean/declarations/apple-authority-cover-read-only.md) | 482 | `result-track:a4b9fcf57ff93df37af1567e31c4a07f41770f15ce627310e8373a59c20d570d` |
| 104 | `theorem` | [export_preserves_witness_semantics](../../../../GeneralTopology/CoreNamespaced.lean/declarations/export-preserves-witness-semantics.md) | 492 | `result-track:bb96b2cc67106454a6ceefe2fc12688bf2360d0f6a85e95f8f2aa6566a54996a` |
| 105 | `theorem` | [apple_export_preserves_symbolic_frequency_semantics](../../../../GeneralTopology/CoreNamespaced.lean/declarations/apple-export-preserves-symbolic-frequency-semantics.md) | 502 | `result-track:79d451e445451068a1803011a935cf2c894711d24920650c618e7bfdee4701a6` |
| 106 | `theorem` | [seeded_scatter_preserves_boundary](../../../../GeneralTopology/CoreNamespaced.lean/declarations/seeded-scatter-preserves-boundary.md) | 512 | `result-track:7f411c97095355771d08c35a76cae5dc8caad7566f78abba18ecea233ee3bd99` |
| 107 | `theorem` | [grey_smoothing_preserves_witness_support](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-smoothing-preserves-witness-support.md) | 516 | `result-track:f3e1a27e591e145ccaa46557635dcff8ee09281ccc3a5511e1cfb9e4aaccd753` |
| 108 | `theorem` | [nulliant_compactification_preserves_halfsite_markers](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant-compactification-preserves-halfsite-markers.md) | 520 | `result-track:75fbbcf8c695d8e16aef7b44ea0f5b1f7ce043d26a42cc5d6cc90906ef54c4c9` |
| 109 | `theorem` | [nulliant_partition_preserves_halfsite_markers](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant-partition-preserves-halfsite-markers.md) | 524 | `result-track:b9c56b9644fc2293ded3adb99e94e5aa881019f5e1f0e8acb201791f63014817` |
| 110 | `theorem` | [grey_values_reconstructible_from_witness_set](../../../../GeneralTopology/CoreNamespaced.lean/declarations/grey-values-reconstructible-from-witness-set.md) | 528 | `result-track:414ca9d4dcb6f3b2b49875eab361459eff61e69fac7d856ad4a1b12791ffd2df` |
| 111 | `theorem` | [modular_loci_reconstructible_from_witnesses](../../../../GeneralTopology/CoreNamespaced.lean/declarations/modular-loci-reconstructible-from-witnesses.md) | 532 | `result-track:757cfd0f5df9dd4147721454b8f3b1ae21784350f4cd653a8f8814e8108bf7d4` |
| 112 | `theorem` | [modular_loci_reconstructible_from_adjacency_operator](../../../../GeneralTopology/CoreNamespaced.lean/declarations/modular-loci-reconstructible-from-adjacency-operator.md) | 536 | `result-track:e3052b2827032cec0808a87d0ad62d8709124c270844de1af9a33870dac76717` |
| 113 | `theorem` | [adjacency_spectrum_determined_by_declared_operator](../../../../GeneralTopology/CoreNamespaced.lean/declarations/adjacency-spectrum-determined-by-declared-operator.md) | 542 | `result-track:12339e5e445829364e25d54cc676b334694906fa571f68a6022223ce10725b91` |
| 114 | `theorem` | [symmetric_bit_expansion_has_abelian_macro_growth](../../../../GeneralTopology/CoreNamespaced.lean/declarations/symmetric-bit-expansion-has-abelian-macro-growth.md) | 546 | `result-track:a0fb47c2882ee2d63e4cbbf2281ca3bcacdd3f5410a8c009654c12d5eb504f5a` |
| 115 | `theorem` | [or_explicit_nonabelian_counterexample](../../../../GeneralTopology/CoreNamespaced.lean/declarations/or-explicit-nonabelian-counterexample.md) | 551 | `result-track:579047f3122301603282ffde04210ba02645374ff7a89310d6056c94d4ebd928` |
| 116 | `theorem` | [finite_tube_cover_defined](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finite-tube-cover-defined.md) | 554 | `result-track:f7fa4a6ecf396bc1900b5728020d8192d33e547625ceece4e754739d8b6e558a` |
| 117 | `theorem` | [finite_prism_cover_defined](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finite-prism-cover-defined.md) | 558 | `result-track:70659da3e317b19f5ee0f7c848d16a6da1e37423df27d9e68642699ae4bd52b7` |
| 118 | `theorem` | [bit_partition_non_clustering](../../../../GeneralTopology/CoreNamespaced.lean/declarations/bit-partition-non-clustering.md) | 562 | `result-track:0e6dc4065aef8048afb3e2923de684532e848da0bcdf8093f6f146b00191862f` |
| 119 | `theorem` | [finite_partition_nonclustering_preserved_under_reexpansion](../../../../GeneralTopology/CoreNamespaced.lean/declarations/finite-partition-nonclustering-preserved-under-reexpansion.md) | 567 | `result-track:e0ce8196ad3fc0c1da9d923020e9744fbbb26977fddc800f6ce0e87a80b72774` |
| 120 | `theorem` | [non_clustering_preserved_under_reexpansion](../../../../GeneralTopology/CoreNamespaced.lean/declarations/non-clustering-preserved-under-reexpansion.md) | 575 | `result-track:6a5adfc1b32147b7881299848c4e1aee1167bd4c791fc8d0657b9436b59d9bd0` |
| 121 | `theorem` | [non_clustering_preserved_under_nulliant_reexpansion](../../../../GeneralTopology/CoreNamespaced.lean/declarations/non-clustering-preserved-under-nulliant-reexpansion.md) | 583 | `result-track:1f1bea810fa199e7f22e2328bce036e1b1de5a7bc478f0086a2723c43b670c60` |
| 122 | `theorem` | [residue_emission_by_state](../../../../GeneralTopology/CoreNamespaced.lean/declarations/residue-emission-by-state.md) | 591 | `result-track:6287166734b6ea8424b5e43e368fc6dd9f83265b1d9edccc78b5f42ebc3f9648` |
| 123 | `theorem` | [nulliant_emits_partition_yaml](../../../../GeneralTopology/CoreNamespaced.lean/declarations/nulliant-emits-partition-yaml.md) | 599 | `result-track:99544e506661aa2572a7378f567a0cfb4b8f65436730741e88cb22c197a6a348` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dde63e64ed5277988512342b0dac507e40d44bd70cf5518258d98e72ca7edb44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Core/Variant152468f48fc5f772cf091c213706d4b69058b33fcefc9d1aab2757137a496a5d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
