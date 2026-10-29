# Verification target: Fold Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb44ef23c3bbda5f0f35db8b80ea017410fb94c5",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb44ef23c3bbda5f0f35db8b80ea017410fb94c5`.

Source path: `GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-source-edition-2.md) | 110 | `declaration-track:70214b6534f3367bc29ce33d2bf796df6bff233ec72ee78e162c787c0734d56b` |
| 2 | `def` | [Foldl.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-mk.md) | 113 | `declaration-track:eed1d0705378cc7be5611b3f9f6cecbd5fbca7adbdf73ffcaf11c340a444975f` |
| 3 | `def` | [Foldl.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-get.md) | 116 | `declaration-track:db48ad2f17d5d6efcdd72a68c85b01dff47f1e44c481b1e061c582f0cc74b6b5` |
| 4 | `def` | [Foldl.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-offreemonoid.md) | 120 | `declaration-track:9788d4c57afab1d3717bbeb4289f37f1574971f5ce31c79d1839010a43d1a749` |
| 5 | `abbrev` | [Foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-source-edition-2.md) | 128 | `declaration-track:b65258814abd9bbf2f0917eb012f7dcdeaa47677d5db84030c853d60832da33d` |
| 6 | `def` | [Foldr.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-mk.md) | 131 | `declaration-track:9016f627fd522d7889f7485a801063359a40f37f204a8da1e04cd028515e7c13` |
| 7 | `def` | [Foldr.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-get.md) | 134 | `declaration-track:0c35c61cf1d7bdad0947ced8c387432b87bcd9eb01c4f0b5f3980b845cfbfead` |
| 8 | `def` | [Foldr.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-offreemonoid.md) | 138 | `declaration-track:5806320e3bd6d8f98b1ccf1cb1838c8d2593e7189e27cb463d5a2883b79b7025` |
| 9 | `abbrev` | [foldlM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm.md) | 146 | `declaration-track:c01592241422ddb6f3913e76099e244a109aad81a9c789a4a3e6fc5aabf8d2c2` |
| 10 | `def` | [foldlM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-mk.md) | 149 | `declaration-track:f0745ccd1c7214e5d309b713bfa993dc74d9a7657b979ab9ab9a9203f371b5e1` |
| 11 | `def` | [foldlM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-get.md) | 152 | `declaration-track:05ff0b1047312e66667a98b9997b0ae051b3294dd7546f951e74d02836d089a8` |
| 12 | `def` | [foldlM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-offreemonoid.md) | 156 | `declaration-track:f312ae8a1d39d8af2917fd9f39d1212ebc9a7b38455cd4c118924901acf408c5` |
| 13 | `abbrev` | [foldrM](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-source-edition-2.md) | 165 | `declaration-track:fb15c3b8ccadc4d54a02e97166b245b314636d8d9b91a14a675e495e829ca56f` |
| 14 | `def` | [foldrM.mk](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-mk.md) | 168 | `declaration-track:b1ea3ede2b63aa94353ce8c92c0b60646d53c61e2519d42523c05681ef21cc44` |
| 15 | `def` | [foldrM.get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-get.md) | 171 | `declaration-track:0434a06a1e8e57c76dba54cab327f786e8ba375ce80915db3cc53e760fc30ec8` |
| 16 | `def` | [foldrM.ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-offreemonoid.md) | 175 | `declaration-track:636222fe12feff87609cc38155623fdb55345026693909007efa9a5cd0cc84aa` |
| 17 | `def` | [foldMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldmap.md) | 190 | `declaration-track:a245b99aae0e2a2779011d86f09b13ca7413a60cf61cc709600fed97446684a8` |
| 18 | `def` | [foldl](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl.md) | 193 | `declaration-track:438cfcc7eede2333ed463e90b8d237347a28a24534bde03c01bc1df6093b5cb6` |
| 19 | `def` | [foldr](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr.md) | 196 | `declaration-track:5f036e597d8c0d5c85550a6fe7fd50bcf287314ee37f8074c8b81a42e2498428` |
| 20 | `def` | [toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/tolist.md) | 215 | `declaration-track:b64bca21662e2793e795a43196d37600f212b3e0c6802d41ca1816ef82743634` |
| 21 | `def` | [length](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/length.md) | 218 | `declaration-track:94065bec2bdf6941d771af8ed94f705759e34b9c0fab027b2731200f71a9458f` |
| 22 | `def` | [foldlm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-source-edition-2.md) | 223 | `declaration-track:ecd965e9181052bb31ba9b97441e22664f66c217cddcf2c327462b2009e267cb` |
| 23 | `def` | [foldrm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm.md) | 226 | `declaration-track:ee8bed2063aada45aa52aee98f0911ffd6e981c79cf23165d8d4456c5987c294` |
| 24 | `def` | [mapFold](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/mapfold.md) | 238 | `declaration-track:ff78c76d424753e527693cd49d0f201afc12640d0ae76b7989a19a7b137f6aca` |
| 25 | `theorem` | [Free.map_eq_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/free-map-eq-map.md) | 243 | `result-track:28dca49d895b4b7935dfeb81ca07098ea39e98691f03550573a8cef3ff17e621` |
| 26 | `theorem` | [foldl.unop_ofFreeMonoid](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-unop-offreemonoid.md) | 247 | `result-track:6117e68bd48a67d7859ccf9acb99a171feb32237475d271e0e01c3af6d82361d` |
| 27 | `theorem` | [foldMap_hom](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldmap-hom.md) | 257 | `result-track:f40190850b35f79e0d06bf5b05bfda3abf3553b85214a95a815c4b8d9993a139` |
| 28 | `theorem` | [foldMap_hom_free](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldmap-hom-free.md) | 265 | `result-track:25e086f18d5c6a170504712cd7f85e82db3904966d10dda5b7a6b55c12b0ce71` |
| 29 | `theorem` | [foldl.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-offreemonoid-comp-of.md) | 281 | `result-track:f891a822ae7acc965eb1bca6ba7194dc4090914b28859bc78f2591b5742f4f6c` |
| 30 | `theorem` | [foldr.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-offreemonoid-comp-of.md) | 286 | `result-track:dc96946243b726d84fe9fb66eddcf02e878798c62c32a344595b0e8034c75029` |
| 31 | `theorem` | [foldlm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-offreemonoid-comp-of.md) | 292 | `result-track:93e152dbb10ef180a57840315cc364a0fc7762f3b39ed43775860dee863a43f1` |
| 32 | `theorem` | [foldrm.ofFreeMonoid_comp_of](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-offreemonoid-comp-of.md) | 302 | `result-track:aa66c5edca732769b0785d48e03181f05bab629b781b4dbc416a28b5d9eaf064` |
| 33 | `theorem` | [toList_spec](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/tolist-spec.md) | 307 | `result-track:3cf8ce70fa3aad380ca71083f92ef1263c13885bcba08573f37f86e12898106c` |
| 34 | `theorem` | [foldMap_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldmap-map.md) | 323 | `result-track:7507831fd7c563a16a55b6a1c50b660acabb371faf79fcaa33f0afa004b83105` |
| 35 | `theorem` | [foldl_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-tolist.md) | 327 | `result-track:6a110cd621705719a95fe647d7a18b0bbe934a766683beb2fb1280b3b21f309d` |
| 36 | `theorem` | [foldr_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-tolist.md) | 333 | `result-track:ca1d910c20565d6ba2c397a2ef5db3a7e2163773e95e3b7366ae29eb5e7806d2` |
| 37 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/tolist-map.md) | 339 | `result-track:a38588deaeb2f5738685b8e061ce8455a7d64169d832590895b121e2c036aa47` |
| 38 | `theorem` | [foldl_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldl-map.md) | 344 | `result-track:de2cd6e8cac965eeec4a21860dd843cb291f7c59e4a2aae0ea15eac78a3632fc` |
| 39 | `theorem` | [foldr_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldr-map.md) | 349 | `result-track:ec439624f8db2ab97465b747a21c518c8582e6a65a5c0c282f2b4a48dd5d26f6` |
| 40 | `theorem` | [toList_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/tolist-eq-self.md) | 354 | `result-track:db453d714c65b5fa3ebe00df0261e18d37d8f2ad4b9158ec90137029d944320e` |
| 41 | `theorem` | [length_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/length-tolist.md) | 360 | `result-track:238690805a8339033f00465639297b573ae1bd497b7f073cfc95b0872eeed464` |
| 42 | `theorem` | [foldlm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-tolist.md) | 373 | `result-track:ce33b270cd0eefbe50ad8673290b7eead71faff648b0ee0e0e01997c8a4038d9` |
| 43 | `theorem` | [foldrm_toList](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-tolist.md) | 381 | `result-track:b7bd868010636386f7a62b543ea0fa4c16077a6a7e64ef760f03ea36b3a33665` |
| 44 | `theorem` | [foldlm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldlm-map.md) | 388 | `result-track:235eeb845e85206ac3829bcf9eff7e72f2b26b53dce12d1b3f39627bdf478b80` |
| 45 | `theorem` | [foldrm_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/FoldPublic.lean/declarations/foldrm-map.md) | 393 | `result-track:e3ca751e6f65c89c0416c6570e54ee38113e1e6ef8443449e77266268a943a3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=522184ace5e59808f8956d626d33d00244e1e2adc208203088d545d5307fc58b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Fold/Variant70ea1c7da5164c9b9516c8ffd5776d3a3768af29e7800642b091f7f478a64b1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
