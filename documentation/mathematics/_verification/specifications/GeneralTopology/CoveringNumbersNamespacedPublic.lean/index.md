# Verification target: Covering Numbers Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75163648232b773ef5f67fb1669306b0ae191812",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75163648232b773ef5f67fb1669306b0ae191812`.

Source path: `GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean.json)

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
| 1 | `def` | [externalCoveringNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber.md) | 79 | `declaration-track:b08e5e9312ead7e36d7b61f39c713124a3d688cc0ae0059883081ddc64bec735` |
| 2 | `def` | [coveringNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber.md) | 85 | `declaration-track:1de4989ebe7279024f02f8c663b84652b024a811e8733af87d2ae0cfc98e8043` |
| 3 | `def` | [packingNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber.md) | 91 | `declaration-track:c413391caf0e8a6d330a73a69565eb41e4275b03eb0475a06b77e6ddeedec4ff` |
| 4 | `lemma` | [externalCoveringNumber_empty](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-empty.md) | 97 | `result-track:cfedc02f0a6c645f36c5d47f2c276130741c86b4fb5c5c4f44732209e248c8f7` |
| 5 | `lemma` | [coveringNumber_empty](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-empty.md) | 101 | `result-track:aa923c5da2e55673cf2ecf5f7e81affc1ca8f090b786eafdb686828469668316` |
| 6 | `lemma` | [packingNumber_empty](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-empty.md) | 104 | `result-track:8bce2ed101c81e6941fba9ae7ce3d59949d5da59a71b12677292761deea07d29` |
| 7 | `lemma` | [externalCoveringNumber_eq_zero](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-eq-zero.md) | 107 | `result-track:0c26fe74c8d5c700cc73d6d1d615489f32b9cc7213eb128f338b7d568ed90e1e` |
| 8 | `lemma` | [externalCoveringNumber_pos_iff](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-pos-iff.md) | 111 | `result-track:54dd31574d6a2fd8512a04a709705d30cd0a512f0134e749cedb16d32c5fd98d` |
| 9 | `lemma` | [coveringNumber_eq_zero](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-eq-zero.md) | 116 | `result-track:9a8c3af0574c6fb88691c3456f72843033feb2a0ad1c140e1984ba4fc7548ac3` |
| 10 | `lemma` | [coveringNumber_pos_iff](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-pos-iff.md) | 119 | `result-track:febd2b6cb1bfd03372b0db1784456c9bf118407e7f09c91f7ff3fe02d94ee916` |
| 11 | `lemma` | [packingNumber_eq_zero](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-eq-zero.md) | 124 | `result-track:5dc3d6dd4ac9b193c2aa17ef866054fa1c69d181bfced4b694059d0ff0756aef` |
| 12 | `lemma` | [packingNumber_pos_iff](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-pos-iff.md) | 132 | `result-track:79bb2fd67db6e869975a42a56e34b1e695cd073dcd2004728dc64037abf99013` |
| 13 | `lemma` | [externalCoveringNumber_le_coveringNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-le-coveringnumber.md) | 136 | `result-track:86295e0bdf706f0f6ecef1927d674491e7b4a0a8b970bfe2954b1fecd9f37c02` |
| 14 | `lemma` | [IsCover.externalCoveringNumber_le_encard](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/iscover-externalcoveringnumber-le-encard.md) | 141 | `result-track:072793a696d7ac4b5ae8feb796f6a3d61765534120561cf5a05224347d3bd304` |
| 15 | `lemma` | [IsCover.coveringNumber_le_encard](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/iscover-coveringnumber-le-encard.md) | 144 | `result-track:35fe29a93318f9e2b8b958ae4004f55b832b6b1f83f214b50ae0c3c91a5e9bf4` |
| 16 | `lemma` | [IsSeparated.encard_le_packingNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/isseparated-encard-le-packingnumber.md) | 147 | `result-track:41656a2a9d8108447084face9ee4dffa9a040925df8ade973e0ba5bb9692a43e` |
| 17 | `lemma` | [externalCoveringNumber_le_encard_self](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-le-encard-self.md) | 150 | `result-track:93e78e2af0885fa621bdfd59b0f3e8e61c345a336fe316a644eccb9806a6c374` |
| 18 | `lemma` | [coveringNumber_le_encard_self](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-le-encard-self.md) | 153 | `result-track:ad4309e0a71569ee475a0838dc110a7c819c0e0bdf87b7f1189db038a58ff1c9` |
| 19 | `lemma` | [packingNumber_le_encard_self](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-le-encard-self.md) | 156 | `result-track:e86dcfa1c0e1949c49ddcd9a6753da732093586f0b65c62b0bec04fb06c3a4a3` |
| 20 | `lemma` | [externalCoveringNumber_anti](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-anti.md) | 160 | `result-track:3c1cf54f2f00fc78827c1e535a5b8c04a3c3587c17d7f4e0a3d975164cbf3234` |
| 21 | `lemma` | [coveringNumber_anti](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-anti.md) | 166 | `result-track:b6f1bf7f09f38336ecf0a06818ea16307555b6c0fba2467a91dce7798cb9bfa2` |
| 22 | `lemma` | [externalCoveringNumber_mono_set](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-mono-set.md) | 171 | `result-track:70271ab2784c58c1e8d6f980e7a0e5f47a357ca6ca22d9910416bfb9aed10343` |
| 23 | `lemma` | [externalCoveringNumber_zero](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-zero.md) | 177 | `result-track:2e2dcb11cac2d93561625fe87420d5664d40a3a8c79c74bb426c90ac30689cb8` |
| 24 | `lemma` | [coveringNumber_zero](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-zero.md) | 185 | `result-track:5b5ec21939e1b946baa637944caf451e2f0a8bc2ade6847307764758b84d1b36` |
| 25 | `lemma` | [packingNumber_zero](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-zero.md) | 192 | `result-track:c5403c86fb22bec266bffbb9899b1dd4fbb906f8ada2cc7ff08ddcf7ab688c35` |
| 26 | `lemma` | [coveringNumber_eq_one_of_ediam_le](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-eq-one-of-ediam-le.md) | 196 | `result-track:b525a93637cd4c389e014be29734fb24311c096bbd83e87b7e7800ad2ec3fe14` |
| 27 | `lemma` | [externalCoveringNumber_eq_one_of_ediam_le](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-eq-one-of-ediam-le.md) | 206 | `result-track:2d9af9f30ff3320454fac92fa5c48c06705e289f899d2f23324a9fea3b16a49e` |
| 28 | `lemma` | [externalCoveringNumber_le_one_of_ediam_le](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-le-one-of-ediam-le.md) | 214 | `result-track:8e12dd882a595c5821c0118e8b5bab34206472060d994b0b8e0340cbe03264ae` |
| 29 | `lemma` | [coveringNumber_le_one_of_ediam_le](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-le-one-of-ediam-le.md) | 221 | `result-track:92182f11582c3ff5d76b5e0b1682aeb04f9e98635328b4033637e6531c025e6d` |
| 30 | `lemma` | [coveringNumber_singleton](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-singleton.md) | 228 | `result-track:565f31203aa2c99cf5f9b02364e4ffd6276ba9c68047ad01a88a9f756e1fa918` |
| 31 | `lemma` | [externalCoveringNumber_singleton](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/externalcoveringnumber-singleton.md) | 232 | `result-track:94c0afb6b772607fbbab26bf458104b973304b1fb318187ebcf0cf90273a2958` |
| 32 | `lemma` | [packingNumber_singleton](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-singleton.md) | 236 | `result-track:d089e74730d0a33eb885225cff607a8d3c2b60860a6964c1ab19f38f1b581df0` |
| 33 | `lemma` | [exists_set_encard_eq_coveringNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/exists-set-encard-eq-coveringnumber.md) | 242 | `result-track:105629b54455a0745575c81a7100250b365c1d0154d466c51b966bf78a7cc629` |
| 34 | `def` | [minimalCover](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/minimalcover.md) | 260 | `declaration-track:dc3d3ffb2b74967efdc173cba24cf5b68a018a74b7bea8770952244e086af886` |
| 35 | `lemma` | [minimalCover_subset](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/minimalcover-subset.md) | 263 | `result-track:2e08f0d9544baab25536d49379059c735c79089b6d287cd8bae913cfacadb672` |
| 36 | `lemma` | [finite_minimalCover](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/finite-minimalcover.md) | 265 | `result-track:482279eaaeaadd070309901f9cbe1ab310d540d0490e16deb6ea4c02b7c73863` |
| 37 | `lemma` | [isCover_minimalCover](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/iscover-minimalcover.md) | 268 | `result-track:ce85b3e59ee253466068d5cd6dcd43f4b94b05e39799c73b8222a9520f3ecaeb` |
| 38 | `lemma` | [encard_minimalCover](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/encard-minimalcover.md) | 271 | `result-track:4ab297f30a9843788da4e209820ccbeece790e9721173be8f9bc53a61b363b8c` |
| 39 | `lemma` | [exists_set_encard_eq_packingNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/exists-set-encard-eq-packingnumber.md) | 278 | `result-track:cfa1de4f561f894d77417248b4e1477916fbd0fb60bd6d5e7b49f87b1d2be2b4` |
| 40 | `def` | [maximalSeparatedSet](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/maximalseparatedset.md) | 299 | `declaration-track:9ea85382fc4f8996faab4ef7c8cb2610a0a28fe6126ea910af7fb41cd7a3efd7` |
| 41 | `lemma` | [maximalSeparatedSet_subset](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/maximalseparatedset-subset.md) | 302 | `result-track:7ab5ce893e10a717240209d73baf3d04ba8614b9e5bffa12ad7c4f5995d602d4` |
| 42 | `lemma` | [isSeparated_maximalSeparatedSet](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/isseparated-maximalseparatedset.md) | 304 | `result-track:6cbff9bd83297ae3c3eebfdfbfa41e8a7b9b261414d6eb1e17935951875ae686` |
| 43 | `lemma` | [encard_maximalSeparatedSet](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/encard-maximalseparatedset.md) | 307 | `result-track:174fa47c57972aadc343340ff561892f60be3ade5dc9d3b51bf1b3b4fa8ac2c5` |
| 44 | `lemma` | [encard_le_of_isSeparated](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/encard-le-of-isseparated.md) | 310 | `result-track:3c22a8593a5098efbc088247bb2caee1ea33ae0dee34a1e7dea5761c8137a72b` |
| 45 | `lemma` | [isCover_maximalSeparatedSet](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/iscover-maximalseparatedset.md) | 317 | `result-track:dc5813bed3745331ecb1f5114b472ca9c197b6196b5e07c54b13bf4a646bdd2b` |
| 46 | `theorem` | [packingNumber_two_mul_le_externalCoveringNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/packingnumber-two-mul-le-externalcoveringnumber.md) | 338 | `result-track:2dfa24518df6ddd310c95b96a2abd921fc3228440ffc9918c877f5dc7711dfc2` |
| 47 | `theorem` | [coveringNumber_le_packingNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-le-packingnumber.md) | 362 | `result-track:07b9ddc30e202e20e6261540e1085f65f2fbb6e97db5ee94198dba6e382e2689` |
| 48 | `theorem` | [coveringNumber_two_mul_le_externalCoveringNumber](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-two-mul-le-externalcoveringnumber.md) | 369 | `result-track:d9c6cf394a0d309998e9ffe08be26bb15c885f5960c4e29591201b5f02b1787d` |
| 49 | `lemma` | [coveringNumber_subset_le](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-subset-le.md) | 376 | `result-track:455a29af383ef1e7870c33494798aae8a5557c178efba46cbc177a699071cf8f` |
| 50 | `lemma` | [Covering Numbers Namespaced Public](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-image.md) | 393 | `result-track:46db9bf38825c92b242b0498ad33088db23d82befe753f990adddc9aefa02fe2` |
| 51 | `lemma` | [Covering Numbers Namespaced Public](../../../../GeneralTopology/CoveringNumbersNamespacedPublic.lean/declarations/coveringnumber-image-source-line-425-occurrence-2.md) | 425 | `result-track:93c33cd943402fdc4740421ad2684c708ea65ebbb867333e0037f23fde0638a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f911b8dc35d5e13bdbe1992066c3b822538e1a30b69ca9369aefefc0bac8c4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/CoveringNumbers/Variantaf0f898e6f80bb7b3346135f89bbe5dcba6ba5452953cd4aa2fa6672691e1bd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
