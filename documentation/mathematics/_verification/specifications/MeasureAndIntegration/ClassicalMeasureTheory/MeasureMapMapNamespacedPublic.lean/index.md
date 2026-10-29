# Verification target: Measure Map Map Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd37beb4c257507472a7c9ca9c8c62ed259f9171",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd37beb4c257507472a7c9ca9c8c62ed259f9171`.

Source path: `GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [liftLinear](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/liftlinear.md) | 55 | `declaration-track:b44f1cc866b1343c802a3a29bd323a3afb1950ee854181c37f5dba5019f85dc3` |
| 2 | `lemma` | [liftLinear_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/liftlinear-apply.md) | 66 | `result-track:10179d220e0a1b88873b37e0ffe18a6d64d9311eb8af22c9c810ae049ede0457` |
| 3 | `theorem` | [liftLinear_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/liftlinear-apply-source-edition-2.md) | 71 | `result-track:bfcb482838a823fa1350f9c44b18d36fedbd82352131ee0b9f9f6cae04248e3c` |
| 4 | `theorem` | [le_liftLinear_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/le-liftlinear-apply.md) | 75 | `result-track:92084f385b1dab6ed44aa9143cc25dd32dad77b17e85fa58303e68d6bc45fd70` |
| 5 | `def` | [mapₗ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map.md) | 83 | `declaration-track:af0a8f5019404c66621ff20818e4118fe365cba4de03d6be93ae99c76a030b85` |
| 6 | `theorem` | [mapₗ_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-congr.md) | 90 | `result-track:71d96ba7bc1a4490087908c85af780a73028adc0d41d4d8680f8a53aead172e8` |
| 7 | `lemma` | [nonempty_of_not_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/nonempty-of-not-aemeasurable.md) | 96 | `result-track:f6505b314753c18911738c1cffa88ee4a58021f55ab7a4266de9ff7f815fb654` |
| 8 | `theorem` | [mapₗ_mk_apply_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-mk-apply-of-aemeasurable.md) | 116 | `result-track:04376052c1b7ceb7590d8777f2b58ecfa3720d0f75afb9eca00937921fcb8f22` |
| 9 | `theorem` | [mapₗ_apply_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply-of-measurable.md) | 119 | `result-track:7309202e034fa3e73beaa2ccf36afe20c4803258346f0982de43a6a17ec2b38b` |
| 10 | `theorem` | [map_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-add.md) | 125 | `result-track:b43131515511222c913d65acc9369442b3d8402717c0378b597314bf60f26e21` |
| 11 | `theorem` | [map_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-zero.md) | 129 | `result-track:f9bc4a232fb279fcaab096cef939f0d6881fe7f6d574b653371fb90374c46153` |
| 12 | `theorem` | [map_of_not_aemeasurable_of_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-of-not-aemeasurable-of-ne-zero.md) | 133 | `result-track:1f5cf4a188f29ffd9063d936d3bf7b6c91d1b26868e0097ca392d0499bc98438` |
| 13 | `theorem` | [map_congr](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-congr-source-edition-2.md) | 138 | `result-track:d447352518b7b833018a821bb3f7e73084e685fa58441f8715b8623a8ca11351` |
| 14 | `theorem` | [map_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-smul.md) | 150 | `result-track:a4e6793c21909fbba7c6e24f3725119f8a3dff73b820dd84f613711a8889d227` |
| 15 | `lemma` | [map_apply₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply-source-edition-2.md) | 165 | `result-track:5d67703b40613acd88e3c173051a751000b1c2caa7a1933ea49dbba1c55319c8` |
| 16 | `theorem` | [map_apply_of_aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply-of-aemeasurable.md) | 174 | `result-track:9ac534b17b19488263fb9614c5d85dff92c074588b31ddf311cc1ce9bb4eaf12` |
| 17 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply-source-edition-4.md) | 178 | `result-track:bf0d0fe742690053f42fb796340eab5acfdc16f8685f46304770c936d7996894` |
| 18 | `theorem` | [map_toOuterMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-tooutermeasure.md) | 182 | `result-track:affdbba8d5e69e646a82dac7a7f61dfb3efb1cc10adb00d0cd4e7215ad9a1155` |
| 19 | `lemma` | [map_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-eq-zero-iff.md) | 188 | `result-track:9d61057bf6b8bcd81c55dcb57d6dcc5f7336b2b34d9ba00bf17beb08cfffd5af` |
| 20 | `lemma` | [mapₗ_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-eq-zero-iff-source-edition-2.md) | 191 | `result-track:d2da747010be1451fd781b57f5d843ea84cdc602f1149268bc9b930246075fda` |
| 21 | `lemma` | [measure_preimage_of_map_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/measure-preimage-of-map-eq-self.md) | 197 | `result-track:da2eda933ce41725b38151a743f8245ff8fbdf066a65572754fe960bfb34022f` |
| 22 | `lemma` | [map_ne_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-ne-zero-iff.md) | 202 | `result-track:111ff514171ad59d55401172fbe27be3b8e2064faf8906332d6f16b282ef2c88` |
| 23 | `lemma` | [mapₗ_ne_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-ne-zero-iff-source-edition-2.md) | 203 | `result-track:6f22d5ccdf5d867b0ec0e8251ed9b66456c1b88b55ecbda5285cfed229d45fc9` |
| 24 | `theorem` | [map_id](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-id.md) | 207 | `result-track:0cc247daee672f59f04ee3d731d092d76b3e214fe7e699a2f221c09d2297436c` |
| 25 | `theorem` | [map_id'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-id-source-edition-2.md) | 211 | `result-track:cfd866643c04e6b63e3400f5f68a47d4424e8c07ece717dfc3d5ca12f8d764e9` |
| 26 | `theorem` | [map_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-map.md) | 216 | `result-track:555534e4d2f2f46c8c96808a6a05e98cd09b96dedc373c956442a9d3b268b375` |
| 27 | `theorem` | [map_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-mono.md) | 221 | `result-track:04a0afe70642d3771071a96d6c1a2144b98dcdd223cd7c84a780525f98c7da87` |
| 28 | `theorem` | [le_map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/le-map-apply.md) | 226 | `result-track:5ffa188fcd1f092c17ab578df7657ab5afd2feb3f3877ba8a280937dcd32bc78` |
| 29 | `theorem` | [le_map_apply_image](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/le-map-apply-image.md) | 233 | `result-track:61b1288ef302bdcac0b14dade47463cf63564fdb6d752b467b3c810fd12dfecc` |
| 30 | `theorem` | [preimage_null_of_map_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/preimage-null-of-map-null.md) | 238 | `result-track:1c1ab3d05a9a320909ebe3ade448f341a5c5ec208286d02e2434ac5c0fe2af8a` |
| 31 | `theorem` | [tendsto_ae_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/tendsto-ae-map.md) | 242 | `result-track:620d9c0f5c760815923613d8bc293a0567c9010fe8b7f836c0e15b6f4011c58c` |
| 32 | `theorem` | [mem_ae_map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/mem-ae-map-iff.md) | 249 | `result-track:c162b5974739035dbcefa2bdf3650d6b51fb3d015370446b9f8dbb53451f35a7` |
| 33 | `theorem` | [mem_ae_of_mem_ae_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/mem-ae-of-mem-ae-map.md) | 253 | `result-track:c05a808c87ae89bd3204f22e818fa2e5114a478fe49d0a421f30d4ac88825c19` |
| 34 | `theorem` | [ae_map_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/ae-map-iff.md) | 257 | `result-track:6c235e8322ea2d809f61f595deb5d7683fb77ff71a52cca609b851ef54472fbd` |
| 35 | `theorem` | [ae_of_ae_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/ae-of-ae-map.md) | 261 | `result-track:0356a363eebbf53e395f74d86b4dbb126d2b0214c6d0b334b39c09f933a46fd0` |
| 36 | `theorem` | [ae_map_mem_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/ae-map-mem-range.md) | 265 | `result-track:52ba4fc82ebb1b9c83c3cbf0141800510f405796f1eb469d31bc0184be1830e9` |
| 37 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply.md) | 279 | `result-track:1d63c5ed65fcd96050721e25d94a3f1099e6d223c11d1ae3be980fc1ad56fa43` |
| 38 | `theorem` | [map_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-injective.md) | 296 | `result-track:98906be19235b586a15ffb98f442ddb1482f168eda398f6b2ac0fd8399b6a245` |
| 39 | `theorem` | [map_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply-source-edition-3.md) | 314 | `result-track:653f91d850a7021846b5961b801000bd45474343816509cacadac523449f84c0` |
| 40 | `theorem` | [map_symm_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-symm-map.md) | 318 | `result-track:e7426e5cffaa19488c65913e9cfcb46b383338cb238c6914cd7cdbfc4ff6643e` |
| 41 | `theorem` | [map_map_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-map-symm.md) | 322 | `result-track:1923c73728a0cf12b071032113ffc7ba1fe1eb0d9737ff3d358d52df621708f7` |
| 42 | `theorem` | [map_measurableEquiv_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-measurableequiv-injective.md) | 325 | `result-track:eb0f8dcb05fd615d184ead3020c6082ea23bc4fd9ea32b4c03db357ed2f24f80` |
| 43 | `theorem` | [map_apply_eq_iff_map_symm_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-apply-eq-iff-map-symm-apply-eq.md) | 330 | `result-track:8835118990800e2777fc960cf2a62cf57193fd705ec833358583625e38ff124e` |
| 44 | `theorem` | [map_ae](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasureMapMapNamespacedPublic.lean/declarations/map-ae.md) | 333 | `result-track:98c7e70a92a86801e4fcbc74391db88bf31c52b6fda13651c8da1d1a9f60494d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dae3fc765982a220078c67c98bea6421232593ea73c1dda2597d21f22ac7e1bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Map/Variant31443c6cde2d3fc37e8d1f52566e2b7ca0efa7027aef2ea8f0e889662a5b11a2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
