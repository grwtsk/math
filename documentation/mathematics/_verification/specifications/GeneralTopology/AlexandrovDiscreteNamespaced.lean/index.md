# Verification target: Alexandrov Discrete Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90a71dae6498cde7a9ea5b7fdcaa3b1f56047a69",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90a71dae6498cde7a9ea5b7fdcaa3b1f56047a69`.

Source path: `GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Inseparable` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactness.Exterior` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [AlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/alexandrovdiscrete.md) | 51 | `declaration-track:93c379ef02e186cf498a4a0e4172d20723821d939d934209f660e7c2a1636056` |
| 2 | `instance` | [DiscreteTopology.toAlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/discretetopology-toalexandrovdiscrete.md) | 60 | `declaration-track:53a23ecb8e2786738b0046af359122f492ba29b4fa0a634bb9cd7fa6b96986b4` |
| 3 | `instance` | [Finite.toAlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/finite-toalexandrovdiscrete.md) | 63 | `declaration-track:66c5e9ed3de1344d689f671b74beacc3d1ed2d5e8afd569523faeac0e759bcb6` |
| 4 | `lemma` | [isOpen_sInter](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isopen-sinter.md) | 69 | `result-track:ae1ebb108b25e2adca609f2fa95f424acdd3cf4f59aeb3046ce6240464bb19cf` |
| 5 | `lemma` | [isOpen_iInter](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isopen-iinter-source-edition-2.md) | 71 | `result-track:cee691e66bf264064c33b684557e29797376dd4d8c878e94c24b45121ddd022c` |
| 6 | `lemma` | [isOpen_iInter₂](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isopen-iinter.md) | 74 | `result-track:0be9df96d120b5008dc20fae6e23751d1c9d5161415566415afe4b9a33438ee9` |
| 7 | `lemma` | [isClosed_sUnion](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclosed-sunion.md) | 78 | `result-track:bafd11f27f0ec2ac0e636f659d1ea34fafd66f4de14fe8d8b14772fb738dd08b` |
| 8 | `lemma` | [isClosed_iUnion](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclosed-iunion.md) | 81 | `result-track:25fada44cd5da0d2f04a1dc6d554d112335ef90898a677e4617a8a67caefd68f` |
| 9 | `lemma` | [isClosed_iUnion₂](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclosed-iunion-source-edition-2.md) | 84 | `result-track:cf68661206f187b09b5d23411af489c8526eaafc9fe2240edb1a7ec77c16c22d` |
| 10 | `lemma` | [isClopen_sInter](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclopen-sinter.md) | 88 | `result-track:35d5d89f5eba3f93229268ffdd0b6aa2cd3aee1c8f87f0d5f1d417d0548994eb` |
| 11 | `lemma` | [isClopen_iInter](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclopen-iinter.md) | 91 | `result-track:7826154b944dadc4187aade1f37943cb94e43e3b53861c621abf83a1df7bc4ec` |
| 12 | `lemma` | [isClopen_iInter₂](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclopen-iinter-source-edition-2.md) | 94 | `result-track:bce850a0bfb42fb4d6cb722c835024524bfe7615645dcf6fdeb96faf4d1e1e32` |
| 13 | `lemma` | [isClopen_sUnion](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclopen-sunion.md) | 98 | `result-track:ed64be124033ebaff40b9578baac74bf02bda07ec62f8c6ca80b60aed9286bc1` |
| 14 | `lemma` | [isClopen_iUnion](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclopen-iunion-source-edition-2.md) | 101 | `result-track:d29315034a3489f8e4b4f498209525056f1798cf5889db550748a86f36762929` |
| 15 | `lemma` | [isClopen_iUnion₂](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isclopen-iunion.md) | 104 | `result-track:82f1a88d9a776089f5b76472882f8f53fe2874e2cccdfe99e4156bea74b701ca` |
| 16 | `lemma` | [interior_iInter](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/interior-iinter.md) | 108 | `result-track:28ad0aba7527b90c42b8a11ae799ccea2f6fe678e86a029e22c99e7bd909f8df` |
| 17 | `lemma` | [interior_sInter](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/interior-sinter.md) | 112 | `result-track:8d63f47615f3eeb78b77e8d4a1fe46a37696afa7941377aa353fc9e3512e24eb` |
| 18 | `lemma` | [closure_iUnion](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/closure-iunion.md) | 115 | `result-track:0866685f867c394540165c1058c16084755be80009478fc0dc8c5ea76a28ee0e` |
| 19 | `lemma` | [closure_sUnion](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/closure-sunion.md) | 119 | `result-track:5a53de3866eb57c1c2b6eadc6497e0435707c56fb59eddde29e243d327c3f2e9` |
| 20 | `lemma` | [Topology.IsInducing.alexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/topology-isinducing-alexandrovdiscrete.md) | 124 | `result-track:a04c78b271ddd4ae78cb38b3afc334e3c96ed1fe0dc6d744b094ecc744341358` |
| 21 | `lemma` | [AlexandrovDiscrete.sup](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/alexandrovdiscrete-sup.md) | 137 | `result-track:f3ee5d8776c0fc80c4670463c29a5b018bdaecaad95568580e10f06ca5298e7b` |
| 22 | `lemma` | [alexandrovDiscrete_iSup](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/alexandrovdiscrete-isup.md) | 143 | `result-track:7b2f30f5515436dd6ff84f739227964b517d5d6d4a1ff9badb0144b30da1c6e5` |
| 23 | `lemma` | [isOpen_exterior](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isopen-exterior.md) | 154 | `result-track:074cbd0334036d9a7d60c3ad2225081c65a36f29071f93391f54da1eff84c7ce` |
| 24 | `lemma` | [exterior_mem_nhdsSet](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/exterior-mem-nhdsset.md) | 157 | `result-track:9ac61bc8e7e58241f98f9273985f7ee09796aee9ecc2262088e35fa1e2bd20cd` |
| 25 | `lemma` | [exterior_eq_iff_isOpen](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/exterior-eq-iff-isopen.md) | 159 | `result-track:de63519b1a6caff784d6a6a1c932e280a3b9b2cbb33c772fa2e42eab49b59c80` |
| 26 | `lemma` | [exterior_subset_iff_isOpen](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/exterior-subset-iff-isopen.md) | 162 | `result-track:daa5608712b1638ecbdaa84b62340e4e355e51831823d9f93fc93f2cb0c880f4` |
| 27 | `lemma` | [exterior_subset_iff](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/exterior-subset-iff.md) | 165 | `result-track:7a67aa6825c7fd5f77cf3b9a035e442702ea0f985f1c29889a553e48b26231e5` |
| 28 | `lemma` | [exterior_subset_iff_mem_nhdsSet](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/exterior-subset-iff-mem-nhdsset.md) | 169 | `result-track:ec7055eb495f88bcd2285db5eeed9d1ae93a1278fd5b0a522ad1a547763df580` |
| 29 | `lemma` | [exterior_singleton_subset_iff_mem_nhds](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/exterior-singleton-subset-iff-mem-nhds.md) | 172 | `result-track:31a644570cb50ab4c345008a2465c9ca4b20799c55f46a3df2eaed478e66178b` |
| 30 | `lemma` | [gc_exterior_interior](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/gc-exterior-interior.md) | 175 | `result-track:c90633f0d9cfb18f855013dfe0c486f6c397c2ed97977e8ff3d551f3f840eb63` |
| 31 | `lemma` | [principal_exterior](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/principal-exterior.md) | 178 | `result-track:613f26d5fc8e7d998413f5acfe655a190cf697390ae8d049b981b430fd8e760f` |
| 32 | `lemma` | [isOpen_iff_forall_specializes](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/isopen-iff-forall-specializes.md) | 181 | `result-track:28bf113c09b978a838e213c74e71b3429ecc8b63b406814eaabbb8cd03f3d7da` |
| 33 | `lemma` | [alexandrovDiscrete_coinduced](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/alexandrovdiscrete-coinduced.md) | 185 | `result-track:60f513e345976c4a2ce3aac13f8240b3937d4440b57a0cbdea372db64dbd23c1` |
| 34 | `instance` | [AlexandrovDiscrete.toFirstCountable](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/alexandrovdiscrete-tofirstcountable.md) | 190 | `declaration-track:15ffa3cf7c0d4eadc214089c0d3d5af947c993e94617c36fb6a68b79cd981e38` |
| 35 | `instance` | [AlexandrovDiscrete.toLocallyCompactSpace](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/alexandrovdiscrete-tolocallycompactspace.md) | 193 | `declaration-track:d4df9e3843db97f72dbf38edbee0d3518e612fc7087a85d9056af8299ffb63d2` |
| 36 | `instance` | [Subtype.instAlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/subtype-instalexandrovdiscrete.md) | 198 | `declaration-track:3ff1b585d0a3d850fd57b8a495075cd3c01b0372e9ab6aff5a176a2e3c4e23db` |
| 37 | `instance` | [Quotient.instAlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/quotient-instalexandrovdiscrete.md) | 201 | `declaration-track:a4e541b59975168aacbdfe39b55fc76091e14f28ad533719fe29cf793b4d6cf9` |
| 38 | `instance` | [Sum.instAlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/sum-instalexandrovdiscrete.md) | 204 | `declaration-track:faabf0e005e8f3047c438880d5be7be42841722e54b884c2c7beed49d51e18e8` |
| 39 | `instance` | [Sigma.instAlexandrovDiscrete](../../../../GeneralTopology/AlexandrovDiscreteNamespaced.lean/declarations/sigma-instalexandrovdiscrete.md) | 207 | `declaration-track:87dc4bb7ca0542cd30bed53a5dfc46aa895101d319ece8c14affffb7f37ec024` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a03d18d1801181aa419e21e58847cf1d91d84585aa8f71b1670031f3e83ab8f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/AlexandrovDiscrete/Variantb9471f5a10c24f98aa166f23297aad3dc9f58f1fb46a3b9ed09673f144ff1c78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
