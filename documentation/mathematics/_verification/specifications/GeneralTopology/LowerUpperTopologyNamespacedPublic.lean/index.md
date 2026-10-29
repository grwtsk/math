# Verification target: Lower Upper Topology Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c27d2df7280307e9a366db5c4bbba8dbec1e2a44",
  "lexical_observation_count": 99,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c27d2df7280307e9a366db5c4bbba8dbec1e2a44`.

Source path: `GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean.json)

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
| 1 | `def` | [lower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/lower.md) | 73 | `declaration-track:2817fcd7e22d472e0331f7dc218fc36eeb45d6e633caa187f867dd0a82af886f` |
| 2 | `def` | [upper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/upper.md) | 80 | `declaration-track:90bbc34fc17585d255e56f455bf1c4fd0e6d20b64c04b40e247bedd946f75bfd` |
| 3 | `def` | [WithLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/withlower.md) | 83 | `declaration-track:5fbbc169be34b3793f4d1b0d686cc088a39e62138b8cd362911c9a10d0e0ad23` |
| 4 | `def` | [toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tolower.md) | 90 | `declaration-track:ff9377d788db98f6d89446eeb8e5eae764aec8176c8efd9e8b43a8082c2e7890` |
| 5 | `def` | [ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/oflower.md) | 93 | `declaration-track:10220c153a022d8790f4eadd468862ba43ac50fced61a257fa8ecafae2538c13` |
| 6 | `lemma` | [toLower_symm](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tolower-symm.md) | 95 | `result-track:b0544e69183d0b50d077a72e935da2d746f6189721d58272d3cf518281ed1e32` |
| 7 | `lemma` | [ofLower_symm](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/oflower-symm.md) | 96 | `result-track:a8b62d4015c93b21e1e21eb795d887bda27dab651a4dfcb9e6c11713cc123dc0` |
| 8 | `lemma` | [toLower_ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tolower-oflower.md) | 97 | `result-track:1716fdaa288d2c223c7ca7132fa6ecb55090bf8e6cf21ca6db6e6bc23c2f5e96` |
| 9 | `lemma` | [ofLower_toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/oflower-tolower.md) | 99 | `result-track:8b1dda90eadbff6e76dd7a63074e007f89d6ed9ed24212960556da90f5c31dd3` |
| 10 | `lemma` | [toLower_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tolower-inj.md) | 101 | `result-track:0d8d9a60dd582bd99cd1baa6ad2f029fe741836d1d1fee683967add0cba58841` |
| 11 | `theorem` | [ofLower_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/oflower-inj.md) | 103 | `result-track:1a976ead819746eaa343f71d4f7e99f1f8bab397e5afa228ba9d5241115bc929` |
| 12 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/rec.md) | 108 | `declaration-track:29202f2ec5c1f3d0f432dd6f9e0fdc0d93360fe7f0f57526e5f4089c57f42138` |
| 13 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 112 | `declaration-track:ba46a8d9b6084728edac5b68a71d356b6eb4bfa5fb54d20f35670abdce09e858` |
| 14 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 113 | `declaration-track:302afaf77092c19947157bae3e5db8b34565200aaabf30835db6c9a3ca0dfa95` |
| 15 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-21.md) | 119 | `declaration-track:e9080a635eb269773badcb902100f2260ee8f11bc408785a36c6769edd3f2415` |
| 16 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 120 | `declaration-track:a7d16fd373c4ffa4ccb05c2ab83bf943f96a141453d05203cf0e35cdc637fa32` |
| 17 | `lemma` | [toLower_le_toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tolower-le-tolower.md) | 122 | `result-track:99d6d53786fd69c48bac26ab5cbc5b2ec654a5fa42b7ad4a65707b9fea6aa1b8` |
| 18 | `lemma` | [toLower_lt_toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tolower-lt-tolower.md) | 123 | `result-track:d790894755a6cd23d72db159dbabed909da2cdbe88505533d3bdd96e305d81d1` |
| 19 | `lemma` | [ofLower_le_ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/oflower-le-oflower.md) | 124 | `result-track:25e85acf794b1d668ea0c3f8ba447284bd5f3b699cb1af67affbe4495a9cb343` |
| 20 | `lemma` | [ofLower_lt_ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/oflower-lt-oflower.md) | 125 | `result-track:50ddeb9817100d7197f4a4f7f18fed2fcbba1478041205d235fd65f7ac6505b9` |
| 21 | `lemma` | [isOpen_preimage_ofLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isopen-preimage-oflower.md) | 127 | `result-track:d896e926ac0c0db76e0cf5e5ca106465e078acafea60b1813113a1f3791e7122` |
| 22 | `lemma` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isopen-def.md) | 129 | `result-track:48ee72f0cf4fca13fd479cf0eb97d48638b6d3c5486f32e3cf3cd18ed93f8147` |
| 23 | `theorem` | [continuous_toLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/continuous-tolower.md) | 132 | `result-track:3749059c0e5af342400370e89cef9d20c61531066fb5740caf8cdf73d03d7ddd` |
| 24 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-20.md) | 138 | `declaration-track:e8d0685c88a77aa6c12078d2049a0b38fc4f7b2dcca373b97ac10feb59655f8d` |
| 25 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 139 | `declaration-track:34f2ebc4d1ca1d1a74e8ce5a2882067e8c542b4feab9b2501035a60fd9666735` |
| 26 | `def` | [WithUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/withupper.md) | 144 | `declaration-track:a5f2b6cf16966bb0ebb50fa907c99ae4ec71d24ffb749a4742c9cf05c128a680` |
| 27 | `def` | [toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/toupper.md) | 148 | `declaration-track:8b09e1f6919f44fdffa00a9327696f317f3543575dd996515141e703bf3e2188` |
| 28 | `def` | [ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/ofupper.md) | 151 | `declaration-track:d06af45501fe52e3f6d10498fbd47a9bfe4bc1b15361295d77eed3c9030ee5fe` |
| 29 | `lemma` | [toUpper_symm](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/toupper-symm.md) | 153 | `result-track:eae376c0f953b5b6ac34d185e0074372f3e8cdf7281a036d745ed2f4ab7908ba` |
| 30 | `lemma` | [ofUpper_symm](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/ofupper-symm.md) | 154 | `result-track:57cf025a888657af00707ec974bda82096101e6db26ea910afba31f8a3d24356` |
| 31 | `lemma` | [toUpper_ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/toupper-ofupper.md) | 155 | `result-track:4366b8b60e447ab8955dce2c0a8da98257982294aa17408ed1b8c81a96cabea9` |
| 32 | `lemma` | [ofUpper_toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/ofupper-toupper.md) | 156 | `result-track:c291bc40f7be1cce86ffd8acd1426d86996f94e28d52e136ec11ba1f884e3602` |
| 33 | `lemma` | [toUpper_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/toupper-inj.md) | 157 | `result-track:53939183807efbe775ca7acefbfa9dd3b5edf575ac57275ca1bc64b2778e4509` |
| 34 | `lemma` | [ofUpper_inj](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/ofupper-inj.md) | 158 | `result-track:66ad7359578af9be918a7f1e72366f4f1015588405a6f0de87d2b5227a48ccce` |
| 35 | `def` | [rec](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/rec-source-edition-2.md) | 162 | `declaration-track:8122a4a3999c3be7f574348c80c6c3b395c44911e38a4c35d9cc2c5cb0629f1d` |
| 36 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 166 | `declaration-track:aa2b080760c36bf95543a5d193aaaf6589175feadc0ca12bda2bbc86f629e91c` |
| 37 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance.md) | 167 | `declaration-track:18ffc0790ca11b486007b3955dd3717a38de252fe8ee000459fdb81ddc7a9bfa` |
| 38 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-18.md) | 173 | `declaration-track:d6f5eda39a94cf98b85106367d556bf4c634e68c4b2d6b576d79138bca549767` |
| 39 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 174 | `declaration-track:7033999aece18c1ba62c449fb7160c760319d3c5ca09a9da4aed83fe136528c0` |
| 40 | `lemma` | [toUpper_le_toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/toupper-le-toupper.md) | 176 | `result-track:ed9bdfd6bfb8147b13a2cd3e6cdefe936148f7b97eb032b4819c83a9779d0968` |
| 41 | `lemma` | [toUpper_lt_toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/toupper-lt-toupper.md) | 177 | `result-track:213314cb1b4598822f23337d5118b527b10c3511a28e9c5ade29bda38e0ce28e` |
| 42 | `lemma` | [ofUpper_le_ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/ofupper-le-ofupper.md) | 178 | `result-track:e7a18ede0cb27b20c4a36f07de7dccdf2a65d0e5d3698123855501798b6608df` |
| 43 | `lemma` | [ofUpper_lt_ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/ofupper-lt-ofupper.md) | 179 | `result-track:469827027f934734e24f147c95f6ec8a23e5df2c834260f8fa08ce4a1837ff21` |
| 44 | `lemma` | [isOpen_preimage_ofUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isopen-preimage-ofupper.md) | 181 | `result-track:809f7c9aa0e293083ee40908b3ac8b38f776a86b884cdac45e83022c4c362d04` |
| 45 | `lemma` | [isOpen_def](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isopen-def-source-edition-2.md) | 183 | `result-track:c751d47d21293cdea08ff77309c4fd93fe64b7c0a9641835cca67e9b5dff844a` |
| 46 | `theorem` | [continuous_toUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/continuous-toupper.md) | 185 | `result-track:9ece024a82e629b833bd25841c6671cb07d2348f76ec096a61c6df82a4bb943e` |
| 47 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 191 | `declaration-track:1b4277274665d2628c902830821fa6d7ab7e58ab4d29b2a31f0efcd50101aa4c` |
| 48 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 192 | `declaration-track:4ccb0e40c2da59de9a15607e541f6bd0d93da7a15e78015bd174d95421cfbe68` |
| 49 | `class` | [IsLower](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/islower.md) | 200 | `declaration-track:f37b2cd516ba06fdd24e2d0942e02abc46fe0d0bdcedf5ebf90e7976dcb8c3ac` |
| 50 | `class` | [IsUpper](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isupper.md) | 209 | `declaration-track:f05aa369d8e05413305b57f1302fefef1fb6c679b9d2cc8a07ea9d606ae149bf` |
| 51 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 213 | `declaration-track:9873a24cee11ca52e24a919ceba409f0168a47c16ac9acc4873072ab0673f26a` |
| 52 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-19.md) | 214 | `declaration-track:da397eab2df4c442de4e2c5ef303367dee7f9c00aa8d7317ef3f826c453bfedd` |
| 53 | `def` | [WithLower.toDualHomeomorph](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/withlower-todualhomeomorph.md) | 219 | `declaration-track:a0f23e858b35fa91374b83fa62b71c9fa1d257a0e8e8998b217be35a60f593c3` |
| 54 | `def` | [lowerBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/lowerbasis.md) | 231 | `declaration-track:de01daa2e63ac7d17c0d184be823b89924c85bd8419b4cef31799638974b0473` |
| 55 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/topology-eq-source-edition-2.md) | 239 | `result-track:d4347699b229bc8cb7ac8fe071af2e49ba9ca5913980100867d161bf06bce4be` |
| 56 | `def` | [withLowerHomeomorph](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/withlowerhomeomorph.md) | 245 | `declaration-track:feacc55aeeb2b73a7102fb70fbe9b2e288d8663b72d496e88c614245a2db803b` |
| 57 | `theorem` | [isOpen_iff_generate_Ici_compl](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isopen-iff-generate-ici-compl.md) | 248 | `result-track:a79514b408c6e3f6953b0e0b7a53b9568bad6cb81d4731a8417f824c7b8d6f02` |
| 58 | `instance` | [Lower Upper Topology Namespaced Public](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instisupper.md) | 251 | `declaration-track:3b38cbef5572ca0fa84c3abe45060d14b068356e8050026ccbe59e17653c699f` |
| 59 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 255 | `declaration-track:6d059f5d9ba7e73d1b22df4db46673b8886015b2ae92c836819be58a3e01bb92` |
| 60 | `theorem` | [isClosed_upperClosure](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isclosed-upperclosure.md) | 259 | `result-track:4c40c8125682d59d8ee8544ee1ecbcf821a6c74f8e71446d847e540c3831656e` |
| 61 | `theorem` | [isLowerSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/islowerset-of-isopen.md) | 264 | `result-track:600e9acb6e7ae89bb0e8b5eeba1d3f30eb9077eb6429a9e98a23caf247fc3743` |
| 62 | `theorem` | [isUpperSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isupperset-of-isclosed.md) | 272 | `result-track:be2a38f133fc672689c977783c9291213612a561e21dd890325e9d4f01ee460c` |
| 63 | `theorem` | [tendsto_nhds_iff_not_le](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tendsto-nhds-iff-not-le.md) | 275 | `result-track:0417bf101a316ae6b805f2d7d9b237d81ce3c833b19d7191392a32f8577fa2b7` |
| 64 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/closure-singleton.md) | 285 | `result-track:46f106151a1ffd134ce751e5fd73dcfb6ba72ebe0e6075d1a8f77f4efd4f08c7` |
| 65 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/istopologicalbasis.md) | 289 | `result-track:83a2caee291e3c10ba632cfdb67aa5baef8c9121e9bbb86f665adf7b25163398` |
| 66 | `lemma` | [continuous_iff_Ici](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/continuous-iff-ici.md) | 306 | `result-track:764dd2dad6fc5c2db123cc2e2ec95bdf0f8b3080cd6e94bcf62687c81522b0dc` |
| 67 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 319 | `declaration-track:29491266514b134be11e53d42dc03e8a44c40984d1b6b214603d42dcf9da18b6` |
| 68 | `lemma` | [isTopologicalBasis_insert_univ_subbasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/istopologicalbasis-insert-univ-subbasis.md) | 329 | `result-track:02962782c3e27a2776a2cb6bf9886c083101bcb126eb716e34a71966fdae5753` |
| 69 | `theorem` | [tendsto_nhds_iff_lt](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tendsto-nhds-iff-lt.md) | 336 | `result-track:103816d8e57a8f6f960678f1a61327b0b549551f4329550b0bbf57cd9d3addce` |
| 70 | `lemma` | [isTopologicalSpace_basis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/istopologicalspace-basis.md) | 346 | `result-track:4b8b4a20b92a59806c6933d56fc67917570ce8f9c049791e1a26567f4fe7df5f` |
| 71 | `def` | [upperBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/upperbasis.md) | 391 | `declaration-track:fba733fab56e851eba9e97ee0ebe616e58706d07599932becb5f8eef82b37745` |
| 72 | `lemma` | [topology_eq](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/topology-eq.md) | 399 | `result-track:3ea59b438899e237482d3f10cf28be00b2c8393aea5d37c7d5693a04af0d1cda` |
| 73 | `def` | [withUpperHomeomorph](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/withupperhomeomorph.md) | 405 | `declaration-track:b0bfe02c131fdd0786816d2ddf828271bf1dddcf5d26de65a08328eeaebb50c6` |
| 74 | `theorem` | [isOpen_iff_generate_Iic_compl](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isopen-iff-generate-iic-compl.md) | 408 | `result-track:810d035265b5fc2b90621efebd66f09ad979273d25907df401f1affe1ba304d8` |
| 75 | `instance` | [Lower Upper Topology Namespaced Public](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instislower.md) | 411 | `declaration-track:26b8390d7fcd6af74dc560ce4906efe67aa8f3aa0fe551b71a7e023f0355cd21` |
| 76 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 415 | `declaration-track:9fcc1b46a1eaa0cfac554754ff6981034e19c9dc7d957ee68ab41a4deeb00fde` |
| 77 | `theorem` | [isClosed_lowerClosure](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isclosed-lowerclosure.md) | 419 | `result-track:6888729e8cd5e8b023079b1310206b07c86e582f53bd6ddc487e46e5b1953648` |
| 78 | `theorem` | [isUpperSet_of_isOpen](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isupperset-of-isopen.md) | 423 | `result-track:3f8a48797c9b9ce1e145f9c15db8fd22ee73d05f4f752c1ba329e0312c95ce94` |
| 79 | `theorem` | [isLowerSet_of_isClosed](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/islowerset-of-isclosed.md) | 426 | `result-track:c22546bef3b5a239e2e5642cf79f892ce9da1792e9e5a2a92208906d929540ee` |
| 80 | `theorem` | [tendsto_nhds_iff_not_le](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tendsto-nhds-iff-not-le-source-edition-2.md) | 429 | `result-track:ce64de41bc4a970df3babc5c5bf8dc64d12eee6daaca1a5389a759a8403383e8` |
| 81 | `theorem` | [closure_singleton](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/closure-singleton-source-edition-2.md) | 438 | `result-track:c1c3121dda3a3d427c64440f0891ccec845afc3daa574beca20ca2a6c87bbca5` |
| 82 | `theorem` | [isTopologicalBasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/istopologicalbasis-source-edition-2.md) | 441 | `result-track:f0f585edc1ee10b65b823285e1e4d5f799f12be4eee39b22e2c7a58ac367d374` |
| 83 | `lemma` | [continuous_iff_Iic](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/continuous-iff-iic.md) | 446 | `result-track:5cf9cf129546c26b112a7ad75b7d231a2c2fa44887acf774db60035fd0a5d974` |
| 84 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 459 | `declaration-track:4c35b44ddd62986d1f19ac91c7ead47db063f966bca6d5459c845ae62bb5e6e9` |
| 85 | `lemma` | [isTopologicalBasis_insert_univ_subbasis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/istopologicalbasis-insert-univ-subbasis-source-edition-2.md) | 468 | `result-track:efe20d05b8dde2cca142389038f39c834c42dea571fe08886782b3b7a113b3d6` |
| 86 | `theorem` | [tendsto_nhds_iff_lt](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/tendsto-nhds-iff-lt-source-edition-2.md) | 472 | `result-track:6b9f08355cfd4ad9b4645f098172da5aecbc9626a6a83144f9b5d02e0150a378` |
| 87 | `lemma` | [isTopologicalSpace_basis](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/istopologicalspace-basis-source-edition-2.md) | 482 | `result-track:763a6294df7ac6aebb93c600e9816bc3358714695cc0c9e450423a42efd0372b` |
| 88 | `theorem` | [preorderTopology_le_lower_of_linearOrder](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/preordertopology-le-lower-of-linearorder.md) | 493 | `result-track:dd8088d3f2c773abe3d07b8341c32d68403aad18598715784a2d905d0f419f65` |
| 89 | `theorem` | [preorderTopology_le_upper_of_linearOrder](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/preordertopology-le-upper-of-linearorder.md) | 496 | `result-track:530b078d391ce9c285c232782cd731d6a349573f63d3b06e8e2df1479346c483` |
| 90 | `theorem` | [lower_inf_upper_eq_preorderTopology](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/lower-inf-upper-eq-preordertopology.md) | 499 | `result-track:975c75a9f4c92cfe629b23019a599f3506ab1d0ef9d789d155bd56236adfb5dd` |
| 91 | `instance` | [instIsLowerProd](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instislowerprod.md) | 506 | `declaration-track:0c1039458b799e4f4ee5db972808703367bd4145d79430e3c93b2db3107cf1ea` |
| 92 | `instance` | [instIsUpperProd](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instisupperprod.md) | 525 | `declaration-track:aa12bea583766524b07b38aac348461e9d2d89cce9e962988aa770b3096698da` |
| 93 | `lemma` | [Lower Upper Topology Namespaced Public](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/continuous-source-line-537-occurrence-2.md) | 537 | `result-track:fb031c737efd56f567ab6c92e8aff0c48b5f51100403209f9497c47083d4ee21` |
| 94 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 546 | `declaration-track:c102415325defeef562084aac5716f12b28a4f1579fb4334a3e24be4138a1612` |
| 95 | `lemma` | [Lower Upper Topology Namespaced Public](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/continuous.md) | 556 | `result-track:35672155b4ed6c09ef3252c207d9715d7480bb284b7fe7bf07294956f43a7560` |
| 96 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 560 | `declaration-track:3f699af1dd709b7918ab8e178f096d0c6a175236929712edf923000ebd32d5bb` |
| 97 | `lemma` | [isUpper_orderDual](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/isupper-orderdual.md) | 565 | `result-track:a754bd1a95f1865c5a2eb2a6032ace99ff3e70c50c396d7b016fc0227e893c23` |
| 98 | `lemma` | [isLower_orderDual](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/islower-orderdual.md) | 570 | `result-track:ef737cccdf19f044dfcaf4a79cb6c11533363c0ac4c17c12204ae99905ddb09e` |
| 99 | `instance` | [(anonymous)](../../../../GeneralTopology/LowerUpperTopologyNamespacedPublic.lean/declarations/instance-source-edition-17.md) | 576 | `declaration-track:c797872bde6e65a2c2ef3738dbf73f15291563d579416ff8784f618d78445b1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8bd755813c9686c9e98913911a07aae166828321cf695d12b8b29cd12a9e29a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LowerUpperTopology/Variant78eed0f5a4dc2d9f16c5e0a92b3413ac350cf11fd19be8a68177b43bb4e4f323.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
