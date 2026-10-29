# Verification target: Local Extr Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff8cad5ca9897f8d1087a143393dd6afdafb4951",
  "lexical_observation_count": 111,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LocalExtrNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/LocalExtrNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff8cad5ca9897f8d1087a143393dd6afdafb4951`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Extr` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsLocalMinOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon.md) | 54 | `declaration-track:3960edc904e33ebd751201d80befb00bd32eab11e9ce77a384e8a2bdf22577dc` |
| 2 | `def` | [IsLocalMaxOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon.md) | 58 | `declaration-track:ad0d58ed7479bb5c54f25424cd8c6d8f2fa22d05d92b18b84e64e905dcef1a47` |
| 3 | `def` | [IsLocalExtrOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron.md) | 62 | `declaration-track:1b6fe19a78a1201c05ebc581bfd8bf93fc8fa4599c829e8505cd792e8857204f` |
| 4 | `def` | [IsLocalMin](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin.md) | 66 | `declaration-track:1fab4067765a4edacb32665c3f5e7ee78de1edc7170be9c4909aac8198d60757` |
| 5 | `def` | [IsLocalMax](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax.md) | 70 | `declaration-track:7894812cc25efda447b86840c1d6c75706b30934bf559ec40d780299e44173ac` |
| 6 | `def` | [IsLocalExtr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr.md) | 74 | `declaration-track:f40e3ed7373b9676d82d880726d2f0cd82a70e70f56d25153e7f9ee68d03819e` |
| 7 | `theorem` | [IsLocalExtrOn.elim](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-elim.md) | 79 | `result-track:888a71459ac90c4973a6afbf07da0da4f25f4b3558afd94fa1248c990b951f3f` |
| 8 | `theorem` | [IsLocalExtr.elim](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-elim.md) | 83 | `result-track:8a8877d530655c3dcfd5448d7d2d2f81b8cc90cf6bee9ec2bcaf55e95c207ca5` |
| 9 | `theorem` | [IsLocalMin.on](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-on.md) | 89 | `result-track:d16371a77608774dad673c757fbe9030231680e0e4a64e99582df57489269dc0` |
| 10 | `theorem` | [IsLocalMax.on](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-on.md) | 92 | `result-track:a94abefdf625091286eaa36a5967a9068777624b1a267cfa7ea223f2e59ea811` |
| 11 | `theorem` | [IsLocalExtr.on](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-on.md) | 95 | `result-track:fa5672078acbd7d6d4caed6f72febaa14d86012289ce15ee687d226bd31bb7bf` |
| 12 | `theorem` | [IsLocalMinOn.on_subset](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-on-subset.md) | 98 | `result-track:050da12726b32e710d7b593a77645a92be2001886ac10d3fa07310a084e44e1c` |
| 13 | `theorem` | [IsLocalMaxOn.on_subset](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-on-subset.md) | 102 | `result-track:4f09ee1030f7aa75893d08293aba0d892b254517e9a3f670c7b9c2b73c20c965` |
| 14 | `theorem` | [IsLocalExtrOn.on_subset](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-on-subset.md) | 106 | `result-track:13db039665811fd2204cbe5c1acce56006d650becfa324468d25e448cf2a3767` |
| 15 | `theorem` | [IsLocalMinOn.inter](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-inter.md) | 110 | `result-track:98843cca21af07f4fbfcfc06ca11a4e3847eb6312ad2ec11a06ae979327f2ea2` |
| 16 | `theorem` | [IsLocalMaxOn.inter](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-inter.md) | 113 | `result-track:b534d04b392ed3eb91ddae81e077d3b22c0ff05f6340055b4a3a2dab4e2d0daa` |
| 17 | `theorem` | [IsLocalExtrOn.inter](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-inter.md) | 116 | `result-track:c3bc143549978ae3a5610e3c4aedc7e76dc494f2c430642a00366d47a18bea19` |
| 18 | `theorem` | [IsMinOn.localize](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/isminon-localize.md) | 119 | `result-track:70da530df11be3828986aa06c2b8b8db2de4c0fa89c44c6460ce71e5209df5b6` |
| 19 | `theorem` | [IsMaxOn.localize](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/ismaxon-localize.md) | 122 | `result-track:9f5dea2bd5b1e7ceea28d6f6c818192c86d0c026b78b5a7993a418c44422550b` |
| 20 | `theorem` | [IsExtrOn.localize](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/isextron-localize.md) | 125 | `result-track:e4ba7061721d900419238bb0976a9f852ee172741d434930d9d4be46ec139418` |
| 21 | `theorem` | [IsLocalMinOn.isLocalMin](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-islocalmin.md) | 128 | `result-track:e849e0ae984fc022db15040cde4fb9abb155287f6eda2cacf6dc30d22bb71117` |
| 22 | `theorem` | [IsLocalMaxOn.isLocalMax](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-islocalmax.md) | 132 | `result-track:f8b1ab4d0a23229554313f65bac1cae08e5c120ebbcc58d282e54f9378fa477f` |
| 23 | `theorem` | [IsLocalExtrOn.isLocalExtr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-islocalextr.md) | 136 | `result-track:914c217dfe9181a1f5276ba60d96d7945f7a1f75adf02c6df317686de68ce46d` |
| 24 | `lemma` | [isLocalMinOn_univ_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-univ-iff.md) | 139 | `result-track:fe682443dabc3d63094a9b40477c81131a41fd0e409dbdd0555cdcead04d2181` |
| 25 | `lemma` | [isLocalMaxOn_univ_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-univ-iff.md) | 142 | `result-track:b56980b02a1449dc5c6b625d789e8605d1dc8d052a2eaae4eeb76aa425edd045` |
| 26 | `lemma` | [isLocalExtrOn_univ_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-univ-iff.md) | 145 | `result-track:91081693330db0bb3e91969cd3786067fc3be4feb895db82ac64eb7147e888ae` |
| 27 | `theorem` | [IsMinOn.isLocalMin](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/isminon-islocalmin.md) | 148 | `result-track:4ce87adf93974eb3b22d452d5ceae92d4bed8382c8a1e2c81710bd9577b51ebb` |
| 28 | `theorem` | [IsMaxOn.isLocalMax](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/ismaxon-islocalmax.md) | 151 | `result-track:997dd70bb8825cd8711e5c344a53fdd4edf6d11b857e36b254e802dbba04cc22` |
| 29 | `theorem` | [IsExtrOn.isLocalExtr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/isextron-islocalextr.md) | 154 | `result-track:c47aa0c74d40240bb49f8ce2ee26f107a33e6948e85a2c66b209839b62f167df` |
| 30 | `theorem` | [IsLocalMinOn.not_nhds_le_map](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-not-nhds-le-map.md) | 157 | `result-track:21d611b4d2a4f90a8caa1d81c53879d10b2ba4886984ffa66765227a8fe4a972` |
| 31 | `theorem` | [IsLocalMaxOn.not_nhds_le_map](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-not-nhds-le-map.md) | 163 | `result-track:0f24e7773c9e56bf007ad9394f1172af549a1dafac1c51d16ece139fdecf229c` |
| 32 | `theorem` | [IsLocalExtrOn.not_nhds_le_map](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-not-nhds-le-map.md) | 167 | `result-track:69b6dd5074b150fb397b68a4aff0f15f6c64b1d69c697800b5237c06d60c9e40` |
| 33 | `theorem` | [isLocalMinOn_const](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-const.md) | 174 | `result-track:a401cc3b7d2a493436a022bd5d48ba257345aa657e2556dac572172a6009db84` |
| 34 | `theorem` | [isLocalMaxOn_const](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-const.md) | 177 | `result-track:73bd07f1a56a86cf493285d1b7bc16f548b9f4673316cc2c7adc6053f7c88c48` |
| 35 | `theorem` | [isLocalExtrOn_const](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-const.md) | 180 | `result-track:ebeaaff56216ebcbbae1e513c8923891c9bbe936753a36b9aa47f093a0d0d774` |
| 36 | `theorem` | [isLocalMin_const](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-const.md) | 183 | `result-track:a91c9b1b2b016e836e62322cb27658f00e9ff96bfed98ae6fcb05d3d38b4d883` |
| 37 | `theorem` | [isLocalMax_const](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-const.md) | 186 | `result-track:36e4b2097d7b7065d0bac93770fee367e8c32215a084fa89197dde01bea39d71` |
| 38 | `theorem` | [isLocalExtr_const](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-const.md) | 189 | `result-track:1bf98fa6e0e0832cc5fb913c0b826525e3b6360af05f5f08459af497eddb6e3f` |
| 39 | `theorem` | [IsLocalMin.comp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-comp-mono.md) | 194 | `result-track:2720714f941e2e84e80a6f00d0c67b2241e5165ab16407f33aee0c171a029db6` |
| 40 | `theorem` | [IsLocalMax.comp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-comp-mono.md) | 198 | `result-track:be4a3faf9a2f6e1a846d22494604bf1ff1fa9cd3e8c4128d20a8474f4eed73c2` |
| 41 | `theorem` | [IsLocalExtr.comp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-comp-mono.md) | 202 | `result-track:e0663ce31bc8801d21416363c318b92708d172a9d9b550e055b5caac5caa21d1` |
| 42 | `theorem` | [IsLocalMin.comp_antitone](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-comp-antitone.md) | 206 | `result-track:2b338779d3686d9037ede94f5f5008bdad052c5e4331710cfb13dad5b807d50f` |
| 43 | `theorem` | [IsLocalMax.comp_antitone](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-comp-antitone.md) | 210 | `result-track:01d67f67e67755540736f93389fdafde5cc98e94c2409eb17d992e2ac82fc687` |
| 44 | `theorem` | [IsLocalExtr.comp_antitone](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-comp-antitone.md) | 214 | `result-track:ea5ae7fadeee982324c98ddd4611bcd076e27962640b8b1649eecd3214aa77ff` |
| 45 | `theorem` | [IsLocalMinOn.comp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-comp-mono.md) | 218 | `result-track:dbb6bd9aa9a3813752d5b99c0caf2350bccc61a96bbea39c2f8904536fd6730e` |
| 46 | `theorem` | [IsLocalMaxOn.comp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-comp-mono.md) | 222 | `result-track:73b82e9e3602632a9bc718d8747ace6d96a1ef04ef2f6112dbcacfe5f89cc3d4` |
| 47 | `theorem` | [IsLocalExtrOn.comp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-comp-mono.md) | 226 | `result-track:aa2dae19803705755eda88a9223e260b0f10918637499e2d43877c79f3f30f4a` |
| 48 | `theorem` | [IsLocalMinOn.comp_antitone](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-comp-antitone.md) | 230 | `result-track:b68f04bc5776b8103688c5314cfd45edcc2005f65a2e203922d7a522a4f720b2` |
| 49 | `theorem` | [IsLocalMaxOn.comp_antitone](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-comp-antitone.md) | 234 | `result-track:bddd95dcc2f28940eb9941747ba4dd9c3dad0e56300b6adfb2166a5f09e61e2f` |
| 50 | `theorem` | [IsLocalExtrOn.comp_antitone](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-comp-antitone.md) | 238 | `result-track:4171f1e1902f7c1e5a532ce64ff7b3cf8a3fa1ec2971cdaeb56eff7c43086b2d` |
| 51 | `theorem` | [IsLocalMin.bicomp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-bicomp-mono.md) | 244 | `result-track:0147bed18a7d95ff745fa33404d241808d991b43f17253505077b9286b352d63` |
| 52 | `theorem` | [IsLocalMax.bicomp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-bicomp-mono.md) | 249 | `result-track:f337c9b8f2d5e5d3fb06c390fa4f8c85bb36b3d7adf7fe7498e62bebb2dd5342` |
| 53 | `theorem` | [IsLocalMinOn.bicomp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-bicomp-mono.md) | 254 | `result-track:59e90a6e85fdd6e75f062447bd691c39b44165e7f32f18375928301e3ed12ec5` |
| 54 | `theorem` | [IsLocalMaxOn.bicomp_mono](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-bicomp-mono.md) | 259 | `result-track:6c9b593bc690cb91c788db50510d8fe2e811bb5aed8351a7a67b60139b09d1ff` |
| 55 | `theorem` | [IsLocalMin.comp_continuous](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-comp-continuous.md) | 267 | `result-track:7ec6e8c5521a397832f01e7a0a322245815967d82d2f4ab06478ed4783841108` |
| 56 | `theorem` | [IsLocalMax.comp_continuous](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-comp-continuous.md) | 271 | `result-track:c6ba83e5c993be7f18b3b33e120cfd9a16e3c8999946d3cfc5bd1d7c7a682495` |
| 57 | `theorem` | [IsLocalExtr.comp_continuous](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-comp-continuous.md) | 275 | `result-track:90008d5c2a53e3538da252c867a02f55a23c7c13c9b5e9af240a15eba49f32e6` |
| 58 | `theorem` | [IsLocalMin.comp_continuousOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-comp-continuouson.md) | 279 | `result-track:b3f77985ef599fc3198162fd779e4dd1e6b81272ae28ce7a7d58a55819475318` |
| 59 | `theorem` | [IsLocalMax.comp_continuousOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-comp-continuouson.md) | 283 | `result-track:6d76786dff0785a80f6ad1f4ed3650db7d71c47abe0dd8dfb246ab652afb8d9a` |
| 60 | `theorem` | [IsLocalExtr.comp_continuousOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-comp-continuouson.md) | 287 | `result-track:f92aa622e0a4f85338f3155777770e8e66a0437703109ccc6afbefe8db1abe3f` |
| 61 | `theorem` | [IsLocalMinOn.comp_continuousOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-comp-continuouson.md) | 292 | `result-track:08f87ba617f1c29355148f74ac771c031cd365f7435418a4b2675fe7e8f69502` |
| 62 | `theorem` | [IsLocalMaxOn.comp_continuousOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-comp-continuouson.md) | 299 | `result-track:f6c5e5abb03398818147b6b4fbb1ba9a24caa1698495443d55b3eaebee91b50f` |
| 63 | `theorem` | [IsLocalExtrOn.comp_continuousOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-comp-continuouson.md) | 306 | `result-track:b185b23b931cda0cfb70e925c1848b2842cb13a732962b6f2635a5438b5a5067` |
| 64 | `theorem` | [IsLocalMin.add](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-add.md) | 322 | `result-track:b1080b8c8d3fd87b4a0c699f025119feb4a3d68e1028117bf242de6739d0d4b4` |
| 65 | `theorem` | [IsLocalMax.add](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-add.md) | 326 | `result-track:656f0aed93d1e16955d63a0dbf87ee31b0a6a31006bb5d26f2e2dc73f75613a4` |
| 66 | `theorem` | [IsLocalMinOn.add](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-add.md) | 330 | `result-track:89ad47240107ea4e5a4c3fe40e205df078de892bb845d627c55b58fef606c397` |
| 67 | `theorem` | [IsLocalMaxOn.add](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-add.md) | 334 | `result-track:34d32628382daaa6e1057f6712fceb598d67e3407be085b4ba806c66e4764f03` |
| 68 | `theorem` | [IsLocalMin.neg](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-neg.md) | 348 | `result-track:c5277674147394c33099542054f37869364e78e96d4162caddb759e5cc9c736d` |
| 69 | `theorem` | [IsLocalMax.neg](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-neg.md) | 351 | `result-track:9d85ebe4ce58691ea0ed9e1a63a962af267887a63039fed65762a6a6147188d5` |
| 70 | `theorem` | [IsLocalExtr.neg](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-neg.md) | 354 | `result-track:896d115e98a33672556ad2f937fb6c1a6d0feace96ab0b5151ed4ad38251f953` |
| 71 | `theorem` | [IsLocalMinOn.neg](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-neg.md) | 357 | `result-track:95e96da0f0f19c951f0f2b689e8d72dd818ea246979dba139f33953f63d13fc9` |
| 72 | `theorem` | [IsLocalMaxOn.neg](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-neg.md) | 360 | `result-track:7fd9dc2917946be5a7f09840c72253b2b0e3686726ce8c496988de9040fae9f2` |
| 73 | `theorem` | [IsLocalExtrOn.neg](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-neg.md) | 363 | `result-track:58e2c15676fadda7a83f73b2fff14b4a2c3138e65437123bd6418af4917dd976` |
| 74 | `theorem` | [IsLocalMin.sub](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-sub.md) | 366 | `result-track:1d332164d3e93a21bfc10b7d14e8d4cea543729f662a5ea20c8adaea1812e4f7` |
| 75 | `theorem` | [IsLocalMax.sub](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-sub.md) | 370 | `result-track:1923400b8d73334d416cdfaf9e334c87ecd10f9f825a84e3191dd323e7cebb79` |
| 76 | `theorem` | [IsLocalMinOn.sub](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-sub.md) | 374 | `result-track:d2f5a99de7c2c85a703c0da62d429042bedb2831eecfbd42e989a829a6fa1094` |
| 77 | `theorem` | [IsLocalMaxOn.sub](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-sub.md) | 378 | `result-track:d5503680d64ae8bb9546f2679a3e44eaf011ada88b2c2f7decff5ccf66f6833c` |
| 78 | `theorem` | [IsLocalMin.sup](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-sup.md) | 391 | `result-track:3c69b26a7d7f6da8f47ccb18aef4b8e5a7efec1e1696099b968ee10ab685006e` |
| 79 | `theorem` | [IsLocalMax.sup](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-sup.md) | 395 | `result-track:b23689fc527c685f5b7150be9a98a6e2cbed2675e5131b46c9415725e4228787` |
| 80 | `theorem` | [IsLocalMinOn.sup](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-sup.md) | 399 | `result-track:86fb6702ebea87f8793dc45401991924036b890a3a90756d5f83c95417fbbf08` |
| 81 | `theorem` | [IsLocalMaxOn.sup](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-sup.md) | 403 | `result-track:22f4808a897f0641f2c8397d31d35f63d8807208ee3540ed45c8fc48e48b1e6f` |
| 82 | `theorem` | [IsLocalMin.inf](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-inf.md) | 413 | `result-track:bdbf8b02f85cca249603c65089f563e6799b8640f20db04bbad668af971a1198` |
| 83 | `theorem` | [IsLocalMax.inf](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-inf.md) | 417 | `result-track:ebf61963d29a8516a0b2b01028dfe66fdb47e0ea187566e11236051e003a9497` |
| 84 | `theorem` | [IsLocalMinOn.inf](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-inf.md) | 421 | `result-track:a9170142bdc5ef36469754b97e2fb43cf92a354b56896ae593696011edf02d23` |
| 85 | `theorem` | [IsLocalMaxOn.inf](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-inf.md) | 425 | `result-track:27fec6753861d204c46ceaa58c9d96160ed8f173b869da47cf6e6c8504836ffa` |
| 86 | `theorem` | [IsLocalMin.min](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-min.md) | 438 | `result-track:77d2c2708e71e14a5b38ef5d713fff2ad27ddf9688f2420dc538bbbca3ee0054` |
| 87 | `theorem` | [IsLocalMax.min](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-min.md) | 442 | `result-track:e1d5a5d9131c468e1fe93012ff969cd6225740c75e704ada3d3b568ec702c81f` |
| 88 | `theorem` | [IsLocalMinOn.min](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-min.md) | 446 | `result-track:1c17c346eac055009218886fbb469031b40b1376e67f40ffa7349fa669ff89d9` |
| 89 | `theorem` | [IsLocalMaxOn.min](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-min.md) | 450 | `result-track:6f38d468419eef5955a80f7fd2e678760bd98476d80f38b3d807e0df80634f5d` |
| 90 | `theorem` | [IsLocalMin.max](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-max.md) | 454 | `result-track:fe63abe80d430750f5a414076eb846eecdc965b2a80c1bdf48433528e26d71ee` |
| 91 | `theorem` | [IsLocalMax.max](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-max.md) | 458 | `result-track:e8125241068ed7a2b8fd4320cde7b243f498e3594974c41407cbfc76c7c5b848` |
| 92 | `theorem` | [IsLocalMinOn.max](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-max.md) | 462 | `result-track:968499073398ab726eba15c7fef8e7dca24053df9a0283e8e5ae532dc36aceda` |
| 93 | `theorem` | [IsLocalMaxOn.max](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-max.md) | 466 | `result-track:b27389e7be8aafdc975aca89c82c11e97f131695f0b34a54fcf990e5ed3f3be6` |
| 94 | `theorem` | [Filter.EventuallyLE.isLocalMaxOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyle-islocalmaxon.md) | 479 | `result-track:b6b9f70dc06e0f099c5626b325bed39405e2a29d48ebd1975f8db08d1328b128` |
| 95 | `theorem` | [IsLocalMaxOn.congr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmaxon-congr.md) | 483 | `result-track:6c1180b629a794c42d05aa1b02398147f26e6601a12b62f327ff7720676cc476` |
| 96 | `theorem` | [Filter.EventuallyEq.isLocalMaxOn_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyeq-islocalmaxon-iff.md) | 487 | `result-track:b4097286dcf52e61eab4c52ed6f131972a97cc23458ef3fea5084fc89bb51245` |
| 97 | `theorem` | [Filter.EventuallyLE.isLocalMinOn](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyle-islocalminon.md) | 491 | `result-track:d29e8ee0c2ecf9544c8cbc20f1dab276c13c0de1da209869ae27e9c07daef4ab` |
| 98 | `theorem` | [IsLocalMinOn.congr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalminon-congr.md) | 495 | `result-track:80112a0870b7754620a2dccf6e9d9d29dc2967e5bf54726c3ea8ecf3cedc691e` |
| 99 | `theorem` | [Filter.EventuallyEq.isLocalMinOn_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyeq-islocalminon-iff.md) | 499 | `result-track:644e81b978feddd69c8f3cdb1f6adab6d9e5fcbf9f6f3e31524247a006fce451` |
| 100 | `theorem` | [IsLocalExtrOn.congr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextron-congr.md) | 503 | `result-track:b723d6bf19a72fd6cc13e1312cd92628ea12db246ebadbb5a3d8d88cf451e040` |
| 101 | `theorem` | [Filter.EventuallyEq.isLocalExtrOn_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyeq-islocalextron-iff.md) | 507 | `result-track:47a0ec802dba1ec411246001d2eb0b6c4e8aefbd0cff05c8d86409900923ecf8` |
| 102 | `theorem` | [Filter.EventuallyLE.isLocalMax](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyle-islocalmax.md) | 511 | `result-track:b085c8fb7e0d001dc43137261e499239aee2e9a47bef8a3649b38fc521a9fb48` |
| 103 | `theorem` | [IsLocalMax.congr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-congr.md) | 515 | `result-track:e4608b07eba877271d9b0244ff9e42e81ba7400d1ed67c6f0845d8766fdbdf1f` |
| 104 | `theorem` | [Filter.EventuallyEq.isLocalMax_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyeq-islocalmax-iff.md) | 519 | `result-track:4978db14b9fdc8e5dde0a73085338bdb68653baf424633cd07a36423eb02a608` |
| 105 | `theorem` | [Filter.EventuallyLE.isLocalMin](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyle-islocalmin.md) | 523 | `result-track:31bcf20fc6e3eb15b37fe75021b1a57259911f039a8ae52f0d53d027d305f58a` |
| 106 | `theorem` | [IsLocalMin.congr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-congr.md) | 527 | `result-track:0bbcd78655e7f0d0ffd08d3ca8ee8795b759d6255e60c34e77fa4552beb02f71` |
| 107 | `theorem` | [Filter.EventuallyEq.isLocalMin_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyeq-islocalmin-iff.md) | 531 | `result-track:1e4306560375e545cc808e53cc077026a70972d29db520ff3e12a0c1ea11efed` |
| 108 | `theorem` | [IsLocalExtr.congr](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalextr-congr.md) | 535 | `result-track:c7760f467db5766bfd2eabc338bcd8afc9aaa9593474e5790806c8616ccb1abf` |
| 109 | `theorem` | [Filter.EventuallyEq.isLocalExtr_iff](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/filter-eventuallyeq-islocalextr-iff.md) | 539 | `result-track:73a15854a6a923c2468e74468ddec76a079f21334bc166ac93129d22549fbadc` |
| 110 | `lemma` | [isLocalMax_of_mono_anti'](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmax-of-mono-anti.md) | 546 | `result-track:38d0b73e33910823e4ce470b907560e63a221e20aac2647cfa13e66aca7a9f03` |
| 111 | `lemma` | [isLocalMin_of_anti_mono'](../../../../GeneralTopology/LocalExtrNamespaced.lean/declarations/islocalmin-of-anti-mono.md) | 555 | `result-track:38aecd5af625175b2471dee51dbcbb7082c3681f0d1db59b9808de0edf5e4a73` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f9505b5ff6b85c89ed8d1a70b19b2c7387a164056bc8d2d2db1fcbb5bb7f965c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalExtr/Variant0b64e73e9ac4652d506f58100712d513072b256e6014c510cd3b7fb192b15af4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
