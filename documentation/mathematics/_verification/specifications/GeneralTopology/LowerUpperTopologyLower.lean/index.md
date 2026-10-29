# Verification target: Lower Upper Topology Lower

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5de4cedca33f6625c806653df23fa610893b286f",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LowerUpperTopologyLower.lean/index.md) · [Full source](../../../../GeneralTopology/LowerUpperTopologyLower.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5de4cedca33f6625c806653df23fa610893b286f`.

Source path: `GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Hom.CompleteLattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Lattice` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/lower.md) | 60 | `declaration-track:a413d3bff23a9dbd5e720f529c56e07d4af30f59dc048e46fbea88b44c57eebe` |
| 2 | `def` | [upper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/upper.md) | 66 | `declaration-track:4eadcbbf0d06c6f1f1cf7db3762aecda638323d03198565ab95c75b98bfc3df1` |
| 3 | `def` | [WithLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/withlower.md) | 69 | `declaration-track:307209f068d65bb003b6b217508506c2778fc6e3ed690678234e6d22314338b5` |
| 4 | `def` | [toLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tolower.md) | 76 | `declaration-track:16426e575e850bb983a8aea764fec0d498a762aabeff160ebe389de962b50bf9` |
| 5 | `def` | [ofLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/oflower.md) | 79 | `declaration-track:f5de3a90a39bf1d97f5a360abc797e9ecbdbab2a36003cfeb1829303956bbef6` |
| 6 | `lemma` | [toLower_symm](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tolower-symm.md) | 81 | `result-track:7c00c85a3e7f2df0140e4b9644955b3a39c4ca5b2027e4a9b6fa13b057ba85cd` |
| 7 | `lemma` | [ofLower_symm](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/oflower-symm.md) | 84 | `result-track:d85831c296be34c7703e63dfb8beb17cccb5d9086f6253c4b7216554b501ae94` |
| 8 | `lemma` | [toLower_ofLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tolower-oflower.md) | 87 | `result-track:317abce111288497a10f6b512a2f087014ce03605bc8870fd58bcacae243f4db` |
| 9 | `lemma` | [ofLower_toLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/oflower-tolower.md) | 89 | `result-track:0e8383ab39f4cffb4f759788685a3c646844977f7805208900089d4bfd09a0be` |
| 10 | `lemma` | [toLower_inj](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tolower-inj.md) | 91 | `result-track:e6b64dfc8591506f25809b1f13b15681eb33eebc6f0227a4f0b8b9d40d1f528a` |
| 11 | `theorem` | [ofLower_inj](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/oflower-inj.md) | 93 | `result-track:611f94476e9aa8cf51af9c77e50a5c72f5cafe1d8c4b927519f7e6529886c440` |
| 12 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/rec.md) | 98 | `declaration-track:6aa8114cf8dfcb044dab58795626cd2541b710135a1455830431a5b47e76a39d` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-16.md) | 101 | `declaration-track:dbe6b6f7655fc65d589756de7bf2fbcd1695333c8c8678644449009ecd8618ec` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:41c85c876598dc5184afa8df627f152383fda6f8d50b3c2c437f05f3128b128d` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-18.md) | 108 | `declaration-track:dfc94c4be4f73f01b7a939d9c98582843bcc521d56139fba9bef4bfd417519ae` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-20.md) | 109 | `declaration-track:f94b02661128717895719a7bb8638cc6d303eba9db4f7118294e5ec96b36c933` |
| 17 | `lemma` | [toLower_le_toLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tolower-le-tolower.md) | 111 | `result-track:4ccf4daa2fe7fa499e78288f4b5c27a900f8317e496f58c2d03df28f213250f0` |
| 18 | `lemma` | [toLower_lt_toLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tolower-lt-tolower.md) | 112 | `result-track:804a165fa214f1f2247cf33e7ded98d6f1258f91ac00f6b21ae54c101062066d` |
| 19 | `lemma` | [ofLower_le_ofLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/oflower-le-oflower.md) | 113 | `result-track:5bd22dad28cf9333c0f4dc70eede04b54f11e0e1d7a8e0cc8e0da01e5912c6b7` |
| 20 | `lemma` | [ofLower_lt_ofLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/oflower-lt-oflower.md) | 114 | `result-track:955b049230dc9fcc134f02b0ba27ff0d026eb97125a94f3fb8485a73e0efb58d` |
| 21 | `lemma` | [isOpen_preimage_ofLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isopen-preimage-oflower.md) | 116 | `result-track:dbb5806c8b60803d14fa14fa10bcb30b4d38e6c4bbc1e95d5ce5f2da53f0eb61` |
| 22 | `lemma` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isopen-def-source-edition-2.md) | 118 | `result-track:d55f8c04335e86086d6921ff5fa7cd9e4bbd0933634a562a20d8fa13c7fe59d0` |
| 23 | `theorem` | [continuous_toLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/continuous-tolower.md) | 121 | `result-track:512f999cc40a8044c8fd0c32979a68d2f668211aae363aeb667cdd1a2f33fbf1` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-14.md) | 127 | `declaration-track:cda3e6ae77e4d0da9d5c093788048922a8501a48858f7ca940132b50e056c2cb` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-6.md) | 128 | `declaration-track:622c868f1aa31d4800a3a308810d573857555e4764c8a58a4f9cc2fa541984ec` |
| 26 | `def` | [WithUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/withupper.md) | 133 | `declaration-track:e8ed33df864536c0a7df82fb4e0e320c4807f0cdcbf6d4aa9209a99431109202` |
| 27 | `def` | [toUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/toupper.md) | 137 | `declaration-track:09f3dca9be4ff1c01e865b6a94240a3310072368ad0f3af1a7653d9955308613` |
| 28 | `def` | [ofUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/ofupper.md) | 140 | `declaration-track:50b8dd09a4de7c56a6db35b51e5148a7f3b66c6776ed8ec152c1dadc2a9d9488` |
| 29 | `lemma` | [toUpper_symm](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/toupper-symm.md) | 142 | `result-track:6592ceff6e470107b10757b1aaeb1f125df99628b7bdef8cc9cb3855079942e7` |
| 30 | `lemma` | [ofUpper_symm](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/ofupper-symm.md) | 144 | `result-track:02158bd6dacdf344ef6ebc552793602bff50f4e5bf91aaaa377e841e0e7e8b6f` |
| 31 | `lemma` | [toUpper_ofUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/toupper-ofupper.md) | 146 | `result-track:29b2cd9a498604822bc89f2e61b003ff2221d318a6476a2c10cf35064036045f` |
| 32 | `lemma` | [ofUpper_toUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/ofupper-toupper.md) | 147 | `result-track:ade65b0e613e819d8157ccf693829e01dda02a60447ad884df12a67dde7e5ae4` |
| 33 | `lemma` | [toUpper_inj](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/toupper-inj.md) | 148 | `result-track:831b3574097547e62e4e45be135c65a4c34d6ca320167035c78e12ec0431cdaa` |
| 34 | `lemma` | [ofUpper_inj](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/ofupper-inj.md) | 149 | `result-track:bad5db02740ed361fefd5783528c562c35810f2627f5f14caba36e9e0f1c4e89` |
| 35 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/rec-source-edition-2.md) | 153 | `declaration-track:aa4918e1149d15d96c39593c99d39ede9e70e08fb2c8c5e87568761b2238790c` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-19.md) | 156 | `declaration-track:efa579c1d7cd5c04b2f431bab349ca13f00b6afbec26831018315e4b2e08a236` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-2.md) | 157 | `declaration-track:2d45b7f120ad2f9b309cb86af5ae5a7a84fd0718da6610a4d1b6478ee17f637e` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-3.md) | 163 | `declaration-track:34c1386e4424d3e19422b0501ccbbea3719064244e08fb6e56353b7430c8dfc3` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-7.md) | 164 | `declaration-track:92f294c4231b7f5a03b4573c3342a9f6b851732c7617ce2026f7932a0cd9b2b7` |
| 40 | `lemma` | [toUpper_le_toUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/toupper-le-toupper.md) | 166 | `result-track:7e77777d24cfe77a83e2c4e9c758195475f610f61dec95c67ca3ecde77413402` |
| 41 | `lemma` | [toUpper_lt_toUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/toupper-lt-toupper.md) | 167 | `result-track:2e6fdedc4e3f9dd32b00b3c7b4a2cad7a87884ea3c5e7706ede1f1555a922e46` |
| 42 | `lemma` | [ofUpper_le_ofUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/ofupper-le-ofupper.md) | 168 | `result-track:04c232fc5a25db87d01b251fd1c9fd511ffca3e27f0a015612cba520bb170f51` |
| 43 | `lemma` | [ofUpper_lt_ofUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/ofupper-lt-ofupper.md) | 169 | `result-track:6da932c4aa86d3405e8f2e517faed7a779428252dd590ba86114002d61430dc4` |
| 44 | `lemma` | [isOpen_preimage_ofUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isopen-preimage-ofupper.md) | 171 | `result-track:2057e293d5f82ed2ac9e3491a84eab8b8286f977d437a1ffc1640bcd094e52d1` |
| 45 | `lemma` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isopen-def.md) | 173 | `result-track:23ce8476cc88a5f41303d78b74fb343e43ce07e649e1e5519ae5635d426585bd` |
| 46 | `theorem` | [continuous_toUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/continuous-toupper.md) | 175 | `result-track:dfd3232cd74afc2dc6091563b06a5ee883ed476b1456226dbaeee95842277954` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-13.md) | 181 | `declaration-track:b8b9ce44d1c4b9cf67ff5bf72daf9fa147b4a35a6220cec0f1dbcfc0f68a9b99` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance.md) | 182 | `declaration-track:11fdcf795fd20b622dbaa9b2144743430db801cc48544560da5eca19fe404832` |
| 49 | `class` | [IsLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/islower.md) | 190 | `declaration-track:935493b36eef9ab75937796b6c3af0c746aec94ed25cf550adf9b5c7ef041c81` |
| 50 | `class` | [IsUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isupper.md) | 199 | `declaration-track:76ed98a484bd45312321849bec0b5def495ee6e34816adfb32797c152025c97c` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-11.md) | 203 | `declaration-track:a311a7eae5635cfb50a3b2568fb36cb7f976a0cd2efa49ff4e41a79e82c91214` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-10.md) | 204 | `declaration-track:a18a32dd3b0b88003cdd0084c1b7de66609490bf0fdf15d28aa5e871dce81538` |
| 53 | `def` | [WithLower.toDualHomeomorph](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/withlower-todualhomeomorph.md) | 209 | `declaration-track:f4534959243b478126fd21a89cb14ea9c271b77a9f67b3fa4636a159f93460f7` |
| 54 | `def` | [lowerBasis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/lowerbasis.md) | 221 | `declaration-track:d9631570b67feac7ae08f86f59ee797137e04529a8151b05236cea34b30ccdfc` |
| 55 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/topology-eq-source-edition-2.md) | 229 | `result-track:a53bb12898e3bbf92ccec3317571b0cb43ea8c09fffb1b047d24f93e9d9ccca9` |
| 56 | `def` | [withLowerHomeomorph](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/withlowerhomeomorph.md) | 235 | `declaration-track:01845ebc6fec88d58d818a1f5b26d68c715eda7e8438b8fafb64ffdfc0627a50` |
| 57 | `theorem` | [isOpen_iff_generate_Ici_compl](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isopen-iff-generate-ici-compl.md) | 238 | `result-track:799befb3a5f69f978e0a71ab841c2f4d9d2ec6652ac1901589b316b239d87b5a` |
| 58 | `instance` | [_root_.OrderDual.instIsUpper](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/root-orderdual-instisupper.md) | 241 | `declaration-track:a9c4c8c29f812370560f1555f7a14455ec25539201f08c1703d46ca60478f841` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-5.md) | 246 | `declaration-track:4b7671b712f7aeceb8d97897b31d8ccbb4592519532148782c8f2c5f9b9b7418` |
| 60 | `theorem` | [isClosed_upperClosure](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isclosed-upperclosure.md) | 250 | `result-track:a8370d27917122b0d69a0e8422e916c6d905efd05c9493001a815f68e503195f` |
| 61 | `theorem` | [isLowerSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/islowerset-of-isopen.md) | 255 | `result-track:3fb1865324d464a64ffd1576159f6d894254e5bc03e40a8c29565b8eaf31ac96` |
| 62 | `theorem` | [isUpperSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isupperset-of-isclosed.md) | 263 | `result-track:714a03e44a60117917b084cd6c127461f38b12863dc391cbfd30ce8cb962e9d6` |
| 63 | `theorem` | [tendsto_nhds_iff_not_le](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tendsto-nhds-iff-not-le.md) | 266 | `result-track:9165bda40028dbfccf007b915baa83302c7c4f8edbb0cee2e522e902fc1d30b1` |
| 64 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/closure-singleton.md) | 276 | `result-track:54742033245795c9c5f8e8b526c1163c13ca30ca37a459df4d9082861be76a53` |
| 65 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/istopologicalbasis-source-edition-2.md) | 280 | `result-track:56d1c446ee31a67f66344d2bfbde8904c9b6a0c5f0dd9c6bfa9744651a41ddb9` |
| 66 | `lemma` | [continuous_iff_Ici](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/continuous-iff-ici.md) | 297 | `result-track:7726f291aa55d1507e3ffc4ca1d5f999fa32ee97315de5586b4c4f0711b177aa` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-17.md) | 310 | `declaration-track:dec85c289b8003fe8fc57719c88f6203cc7b56caac3b2a19b51194a5bf17502f` |
| 68 | `lemma` | [isTopologicalBasis_insert_univ_subbasis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/istopologicalbasis-insert-univ-subbasis.md) | 320 | `result-track:79327736bedec767d02c8b04dacb3d5f0da016fbb04072179ae910416ea327ec` |
| 69 | `theorem` | [tendsto_nhds_iff_lt](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tendsto-nhds-iff-lt-source-edition-2.md) | 327 | `result-track:f03650397af6812c4262ae07624635f435cf04cec2837132d66f9e0712ccea60` |
| 70 | `lemma` | [isTopologicalSpace_basis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/istopologicalspace-basis-source-edition-2.md) | 337 | `result-track:ee856903d1c482a8f3bcb1104542b2a7ead2f1030f88ede0cf89d42a893f4890` |
| 71 | `def` | [upperBasis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/upperbasis.md) | 382 | `declaration-track:4d143823880a1f859a60438965d8a0c206e5a06297766566086346ae7af04445` |
| 72 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/topology-eq.md) | 390 | `result-track:6cbb6e9034d65ceb2f7052536924e40c4d932e87524f9b8275ff4ad3e02708ae` |
| 73 | `def` | [withUpperHomeomorph](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/withupperhomeomorph.md) | 396 | `declaration-track:7cd7e355f3685e9892f6fdf818023322ba969a38c81a0d9f437f65045cab9857` |
| 74 | `theorem` | [isOpen_iff_generate_Iic_compl](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isopen-iff-generate-iic-compl.md) | 399 | `result-track:c2ee1e1adcfc230dc23d4a9dc333d21f0976bc668dfe49a1b93a39901b31d80c` |
| 75 | `instance` | [_root_.OrderDual.instIsLower](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/root-orderdual-instislower.md) | 402 | `declaration-track:4d6371fe2f0892ad5879229571381741fa296addcb6ad6db0c3cd25fe0c55015` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-15.md) | 407 | `declaration-track:d5796a01fed3a0f8d0f540692456c2659c6b29795b1d4056cc2feae2d8884f84` |
| 77 | `theorem` | [isClosed_lowerClosure](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isclosed-lowerclosure.md) | 411 | `result-track:d2ac600518cd82e66c930c929d63f3d59f2172f4d06b008eb9b6a34cb2418131` |
| 78 | `theorem` | [isUpperSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isupperset-of-isopen.md) | 415 | `result-track:42ae2d3b021b476a23729ac366d8c2105f1a5f470813c072ea6a72706462ecb5` |
| 79 | `theorem` | [isLowerSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/islowerset-of-isclosed.md) | 418 | `result-track:e1bbde9f32eb7738817f0008946643c5d691b94b28e7859c2ddf011b3489d958` |
| 80 | `theorem` | [tendsto_nhds_iff_not_le](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tendsto-nhds-iff-not-le-source-edition-2.md) | 421 | `result-track:a915c26813c4fd576d07f78c722f228d628d75934ce63e4bffa21d84270eb703` |
| 81 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/closure-singleton-source-edition-2.md) | 430 | `result-track:f22cda1b8ebf4f17d84bcfccd0158fccf5078806271a50871f2ff9c7135fcc56` |
| 82 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/istopologicalbasis.md) | 433 | `result-track:24bdf03e62a3460dd7f43a12bcd5957bbabb78db691cf2f6d23dda5e6cc3575f` |
| 83 | `lemma` | [continuous_iff_Iic](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/continuous-iff-iic.md) | 438 | `result-track:1c20b7b0bb9166eb28b616c27f7310f299e8bc33bce4921dea50a33f59215bab` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-9.md) | 451 | `declaration-track:9ac1f273eafc64ee3d88f06010abb53ea05114bb5dda307434f856aa5c7eda52` |
| 85 | `lemma` | [isTopologicalBasis_insert_univ_subbasis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/istopologicalbasis-insert-univ-subbasis-source-edition-2.md) | 460 | `result-track:84735b66fbaf0c010cf3689e619e2f55469ad71509e9f5cf32e5ca93eda6b43a` |
| 86 | `theorem` | [tendsto_nhds_iff_lt](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/tendsto-nhds-iff-lt.md) | 464 | `result-track:91cd1d1bd9067a87c6c0bfef72d5a92c2063d0bcdfb49c3b4ee0de986d3d46d7` |
| 87 | `lemma` | [isTopologicalSpace_basis](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/istopologicalspace-basis.md) | 474 | `result-track:bcc68930bf6e078e700656b4e34b3ec0b451af183571d98f26ad16eb3b2d033f` |
| 88 | `instance` | [instIsLowerProd](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instislowerprod.md) | 481 | `declaration-track:fe1542e04c68558d91830739e3b533a685407235001b50fc076173d87c8f3241` |
| 89 | `instance` | [instIsUpperProd](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instisupperprod.md) | 500 | `declaration-track:906a704d00cd035deaa7e417c9408148416a62c7c05d8df47b217e9ce19ceb9a` |
| 90 | `lemma` | [_root_.sInfHom.continuous](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/root-sinfhom-continuous.md) | 512 | `result-track:62eefa75421eee717d35af9d8df58bf473aaac1ef00ef782e060cdf2b9071859` |
| 91 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-21.md) | 521 | `declaration-track:ff01881a23f92a4e6c2f8aab0dc19238622cc791eabbdaab4410c03b36ef0993` |
| 92 | `lemma` | [_root_.sSupHom.continuous](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/root-ssuphom-continuous.md) | 531 | `result-track:71d19624e267a1474dbae76c7af23e480fd6ded786f9230c778abc0fd7bc5559` |
| 93 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-12.md) | 535 | `declaration-track:b5a1bf45bac08f86ef39ff94ee1241f3e0d944dfab8d9453a42d73de4e9b8565` |
| 94 | `lemma` | [isUpper_orderDual](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/isupper-orderdual.md) | 540 | `result-track:4fd6be346816cebff87bb727918069181c854cfa098060ad99efde0afcfb8290` |
| 95 | `lemma` | [isLower_orderDual](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/islower-orderdual.md) | 545 | `result-track:a341f4e3db7eb010beb218b26e6266203cc409aa59b022dc6600e033c9e7e6e8` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyLower.lean/declarations/instance-source-edition-8.md) | 551 | `declaration-track:99d5c8b5108cf95c71e715bda2a991d27fd90de21b4c2d01e66bb26ab8356d6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=012fff141ed24dcb94757ef6baa3b889d9ba421ebfac93f303dbaf76796a1ef3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LowerUpperTopology/Variant52b920617bc9eeddb6b6df9584d40e1632fe9eb89c3e14524075412588b5289a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
