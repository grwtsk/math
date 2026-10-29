# Verification target: Source Profile Atlas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b37ee3da5157fd7d9f38f22db94be592cf43d2fa",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SourceProfileAtlas.lean/index.md) · [Full source](../../../../GeneralTopology/SourceProfileAtlas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b37ee3da5157fd7d9f38f22db94be592cf43d2fa`.

Source path: `GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleVariation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceKapitzaSignedReduction` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Coefficients](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/coefficients.md) | 35 | `declaration-track:b2a316a577fe78cbafc9ff634d670a9cb72bcd89ea4795e2648428cb893104fc` |
| 2 | `def` | [sChart](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/schart.md) | 44 | `declaration-track:4f1a7fcf2f9a262a936b2e14d18d2480e2ac71673f7adf850574ef202359986e` |
| 3 | `def` | [tChart](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/tchart.md) | 46 | `declaration-track:cf9f3565352ce906282e9e71639099207e0947736509d6a86ee0826f46b9d768` |
| 4 | `def` | [scale](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/scale.md) | 48 | `declaration-track:d53a1533b7d817f91ea97f499e50e74154ee3d6e25bfc70f3f1fb62d08ad2b2a` |
| 5 | `def` | [Conic](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/conic.md) | 50 | `declaration-track:958d2e79ffaf612c4a09ecc19e7b84c338fcc2005853854aa9bb01993c3db254` |
| 6 | `theorem` | [sChart_conic](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/schart-conic.md) | 52 | `result-track:8aae197649eb9cef209d8b3a990d6aa4c5ea11624ae69ab4cfd0b4f68958ad05` |
| 7 | `theorem` | [tChart_conic](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/tchart-conic.md) | 57 | `result-track:17575137e1cb129d49836ffc16c9e3e7cb4225f1599284bbf0d0f32ff187e033` |
| 8 | `theorem` | [coefficient_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/coefficient-overlap.md) | 63 | `result-track:90897a4196c3cd5f1a94279af8c4bd1932bef391fcae7e0c89a65689e29cefea` |
| 9 | `theorem` | [transition_involutive](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/transition-involutive.md) | 67 | `result-track:a333a8268f8786de6f9a7a9a5a567f489343074c887e243456d145c183043e82` |
| 10 | `def` | [sDomain](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sdomain.md) | 71 | `declaration-track:5e435919a82d7b0c9046de2d42d72b5aa35f7e2f03d5f03b9bffc730e28b0a73` |
| 11 | `theorem` | [sDomain_open](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sdomain-open.md) | 73 | `result-track:85987a5113cd18a30131b5d5817550fa9bc55e6da9bf108aee1a719d479fe7b4` |
| 12 | `theorem` | [transition_continuous](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/transition-continuous.md) | 76 | `result-track:4a67edb26dd61c0b21176191073b583c10461dd758407e8aeec4369fe516a49c` |
| 13 | `def` | [denominator](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator.md) | 80 | `declaration-track:9ee69c65af7d2ea75d666fd74fb7baa7dab21b53334389d76347cb36da344190` |
| 14 | `def` | [normalizedCoefficients](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/normalizedcoefficients.md) | 85 | `declaration-track:ddf710286dce1beff0d336bd2ba401a3036cd4436e426f4a1d32cd9b97edd906` |
| 15 | `theorem` | [denominator_scale](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator-scale.md) | 88 | `result-track:4f0a43d20ffa5b63f2f4b3fa04b7b198de044e607aa4e7515af6d5f960ef51db` |
| 16 | `theorem` | [denominator_sChart](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator-schart.md) | 94 | `result-track:acb1a2da51521e5dd88663e1b60144f69de80b062ef6c424e3931d9dd914168a` |
| 17 | `theorem` | [denominator_sChart_pos](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator-schart-pos.md) | 99 | `result-track:ff1de8e22e9812f4607c772f403bad263f27755fb7bb57a917dc62067ccf73d3` |
| 18 | `theorem` | [denominator_tChart_pos](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator-tchart-pos.md) | 103 | `result-track:60283a2cfb6a79d985a19a0fc1f5f5f4c358b8bc3e0552743a1692c657863b6d` |
| 19 | `theorem` | [denominator_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator-overlap.md) | 110 | `result-track:75715f0fa400ff7621baf5d8ab1a7d27d53e6d7e8c2726f36b33162e024379e1` |
| 20 | `theorem` | [denominator_overlap_nonzero](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/denominator-overlap-nonzero.md) | 114 | `result-track:43992447b0a51f1f4e1eb86e178ffb20b1a62b5baebdd6e89819b0e08688b639` |
| 21 | `theorem` | [normalizedCoefficients_scale](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/normalizedcoefficients-scale.md) | 119 | `result-track:8ac66d9556f2c2ea56f73279a677fee5a0683243afcff4ee4ecefd6570f3f281` |
| 22 | `theorem` | [normalizedCoefficients_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/normalizedcoefficients-overlap.md) | 124 | `result-track:6d19351b319e0b3b02202b43ea7b6ad9562762b7039f7f984b3878f58c9ed36c` |
| 23 | `def` | [squareReadout](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/squarereadout.md) | 129 | `declaration-track:65190b6a2f7c5c99524de33257e3a4006ea638984d91a25aa909c7916359bf65` |
| 24 | `theorem` | [squareReadout_sChart](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/squarereadout-schart.md) | 132 | `result-track:a6c9cdf22fd0d8eba065c7d9608464d9366696fe5c0a99cad9e146ac010abc29` |
| 25 | `theorem` | [squareReadout_tChart](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/squarereadout-tchart.md) | 138 | `result-track:c13630fc695ce40841d097f11a8e05b5814d463d1d809ba565c01455a4d55927` |
| 26 | `theorem` | [primitive_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/primitive-overlap.md) | 144 | `result-track:8d3a20d682e560a3c606e1791cb43b478169149b72a5f1048c7942e87d4d4ced` |
| 27 | `theorem` | [normalizedPrimitive_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/normalizedprimitive-overlap.md) | 149 | `result-track:c3b86d2337f4c8d359ab1941fce8ada8f3ba29fefe7627b763b52270aa1f923f` |
| 28 | `def` | [sourceCoordinate](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sourcecoordinate.md) | 157 | `declaration-track:202c8c7789bc1a3c98a96cab8199aaa721df43d1676dcb38dfd8a55252d6158a` |
| 29 | `def` | [sDecoder](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sdecoder.md) | 159 | `declaration-track:4e921c0a69ec29edb017f7375c3d68b54e9a8cb4857ec25eab5968d9c180a0a5` |
| 30 | `def` | [tDecoder](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/tdecoder.md) | 161 | `declaration-track:1c8813cda4ef5fde7b412f0ab5172c4a9439b3231f984870ee2ce8dc9e82bbfe` |
| 31 | `theorem` | [sourceCoordinate_bounds](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sourcecoordinate-bounds.md) | 163 | `result-track:abf2802e26ee3416951aa698a795d575df5d33b4e8666cd3e449ab2979f8a4b7` |
| 32 | `theorem` | [sourceCoordinate_normalization](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sourcecoordinate-normalization.md) | 170 | `result-track:2a2ed85ae854be2831c31fad2aef0c8022866bf00d9950e3c32a99b725c4905d` |
| 33 | `theorem` | [sourceCoordinate_decode](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/sourcecoordinate-decode.md) | 177 | `result-track:2da3a8802db90b549071e5ff3b649338f1a463ce0285398074fc902f86402159` |
| 34 | `theorem` | [decoder_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/decoder-overlap.md) | 181 | `result-track:d059ba1c3d636ac27393ce68f77710d0d8941dc3665f0802ad8046c18b92642c` |
| 35 | `theorem` | [tDecoder_source](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/tdecoder-source.md) | 184 | `result-track:da31b3712f98a28fece4e1ad7736489074f817bac5339d697f02f718e46572f6` |
| 36 | `theorem` | [readout_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/readout-overlap.md) | 188 | `result-track:26e00def7f6ceb79d1d0946d8c39cbb9047090d5c1f9be33a5fc60bfd2dbfd7b` |
| 37 | `theorem` | [actual_quadratic_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/actual-quadratic-overlap.md) | 192 | `result-track:321e867236fa94c9b1b42846f14b2b480dd7f62de840d7817340f338b80a96ce` |
| 38 | `theorem` | [actual_compensated_overlap](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/actual-compensated-overlap.md) | 197 | `result-track:87ad7f666e70a323cc5b0317428422e8c4b57c36f95b6fc253f5fc68dfe1a921` |
| 39 | `theorem` | [actual_source_square](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/actual-source-square.md) | 203 | `result-track:47d76f3281e13f877c2d0c01d621b6c5131fa8b08bc1d6506f083ad13ae01ed7` |
| 40 | `theorem` | [normalizedCoefficients_continuousAt_zero](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/normalizedcoefficients-continuousat-zero.md) | 220 | `result-track:c4239d919128050a3b3273e7eedd3bbb7bab57c7ead4a264bcbec6467fda2ca1` |
| 41 | `theorem` | [arithmetic_inventory_unbounded](../../../../GeneralTopology/SourceProfileAtlas.lean/declarations/arithmetic-inventory-unbounded.md) | 237 | `result-track:d722ef1e738d524c9f1b1f41a7450f8ea8882224c12630ca46706f5f975a079e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aa30d46daf710763f685b46f01a3d1357037bb823d8d6dea709eaea6288d0b21 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/SourceProfileAtlas/Variant0a91b4238d7a1dfd542e59becb4b650487a5fe1eda1a53e2519cf69530852fea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
