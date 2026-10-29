# Verification target: Concept Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3871e4bb8d8990931e40db9e0f3dd1b08ed08ff",
  "lexical_observation_count": 117,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantcca848229e5b97c54279d3b511cd55059dcb36530a74112fd39022525f944293.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3871e4bb8d8990931e40db9e0f3dd1b08ed08ff`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantcca848229e5b97c54279d3b511cd55059dcb36530a74112fd39022525f944293.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantcca848229e5b97c54279d3b511cd55059dcb36530a74112fd39022525f944293.lean.json)

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
| 1 | `def` | [upperPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar.md) | 56 | `declaration-track:0d905a1b61b3bd67a74143b0edb231c07d06315f4dedace692bb971f93edf4eb` |
| 2 | `def` | [lowerPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar.md) | 61 | `declaration-track:97b81eab4dee3c516426c579298d7eaff2b0a5ae6cad079505eab4fc9e78a4e5` |
| 3 | `theorem` | [upperPolar_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-le.md) | 64 | `result-track:353996d977baee2445246ee9ccc1aa07adfe01fcd920d153f260720372901bc0` |
| 4 | `theorem` | [lowerPolar_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-le.md) | 65 | `result-track:93ed6732d1affc4d70ce6086e1d3d438c84927e8d45134bedadb8ce8173fa92c` |
| 5 | `theorem` | [mem_upperPolar_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/mem-upperpolar-iff.md) | 69 | `result-track:ae4ace24c4af63ea2e5c7f9ed6c32359b07541382cc549e8c8679b6d9a8e7b8e` |
| 6 | `theorem` | [mem_lowerPolar_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/mem-lowerpolar-iff.md) | 70 | `result-track:27282582132f541ee7178cb29692ce595914e39fb04dcca737ec1f7732700ad4` |
| 7 | `theorem` | [subset_upperPolar_iff_subset_lowerPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/subset-upperpolar-iff-subset-lowerpolar.md) | 72 | `result-track:017e58f01ce5973b9ba1091932a82dba84c3b49bff90d72da4ab8b67d96d9b02` |
| 8 | `theorem` | [gc_upperPolar_lowerPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/gc-upperpolar-lowerpolar.md) | 78 | `result-track:3e4adfcfc323bfb9e4f31b46967f4351c37163cee5ae7c92649c680d5d3620f8` |
| 9 | `theorem` | [gc_lowerPolar_upperPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/gc-lowerpolar-upperpolar.md) | 82 | `result-track:2c99b9743e92740f88f4842df77c2d0d2ee8679b18cc390d23345fb3aa83338b` |
| 10 | `theorem` | [upperPolar_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-swap.md) | 86 | `result-track:1fa858c3568b54e519c7788d40daa165f8df2802f3edacdc3a31f3a1f8dd5155` |
| 11 | `theorem` | [lowerPolar_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-swap.md) | 89 | `result-track:290cda4d455acfe47fde842440de25a00696c0f832709127493e8f49fad953d4` |
| 12 | `theorem` | [upperPolar_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-empty.md) | 93 | `result-track:c3baf68cdb079afc09b2de0dbf9570d47875c905df5828607bdf5312eff31108` |
| 13 | `theorem` | [lowerPolar_empty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-empty.md) | 97 | `result-track:46f7c612a1638a5908f93f8c0978858b40c9e80a9e080fe0f95fb8046c6a19ec` |
| 14 | `theorem` | [mem_upperPolar_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/mem-upperpolar-singleton.md) | 101 | `result-track:4f0d29ce5e6d191f54147e3976f782e6c5a2206574b213291dd8af11195a8047` |
| 15 | `theorem` | [mem_lowerPolar_singleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/mem-lowerpolar-singleton.md) | 105 | `result-track:21d42ec1996cf139a5d4820958cf7bac467665035254bf73ce579c34443a78d6` |
| 16 | `theorem` | [upperPolar_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-union.md) | 109 | `result-track:6f25a897da49d7a04b0a55958ba61e5ad7dd012c1b0b77ab0dddb785f740c2ec` |
| 17 | `theorem` | [lowerPolar_union](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-union.md) | 114 | `result-track:bb6e4130f8ba5b41f17ade9ce9c9b9a9e6123c3becc146fbf60412902adc76be` |
| 18 | `theorem` | [upperPolar_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-iunion-source-edition-2.md) | 119 | `result-track:a87430344947c43172819dc0ef4a2a6c72c89b87b294502da3793107fc883264` |
| 19 | `theorem` | [lowerPolar_iUnion](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-iunion-source-edition-2.md) | 124 | `result-track:3fbdf9878d728662993eb49d82378bafd0ce6d13293d3b43da5ddaa44cd47ca8` |
| 20 | `theorem` | [upperPolar_iUnion₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-iunion.md) | 128 | `result-track:92fe537443fad57e00d22898df289743e5580c53fb679f228d5dcd6192f49652` |
| 21 | `theorem` | [lowerPolar_iUnion₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-iunion.md) | 132 | `result-track:332ee2fd36438741a6383f9e71cfd0b56388623d9d7f4ceb14b4f908a788f65f` |
| 22 | `theorem` | [subset_lowerPolar_upperPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/subset-lowerpolar-upperpolar.md) | 136 | `result-track:ac6effd8e4fb0163d56e56bb6fd3573277a4caad7a499ed9105620d1e58071d7` |
| 23 | `theorem` | [subset_upperPolar_lowerPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/subset-upperpolar-lowerpolar.md) | 140 | `result-track:38c5c4aa8f743049b4d2b265b5027af91de59c6d3c315f5b8c95e6aef55c396a` |
| 24 | `theorem` | [upperPolar_lowerPolar_upperPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-lowerpolar-upperpolar.md) | 145 | `result-track:a6365d7377e42edaa1bb1ccb88132d4cb0366c5ff751dc857fc45f6c4ecd78b8` |
| 25 | `theorem` | [lowerPolar_upperPolar_lowerPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-upperpolar-lowerpolar.md) | 150 | `result-track:da11f322892f723833e8bb0d577e7fa37f96649af329419103683ea7c7eea86c` |
| 26 | `theorem` | [upperPolar_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-anti.md) | 154 | `result-track:246be5ca0d0c4b71ba5aea3da0887ddda6fd2495741853fc894d9c8bee944798` |
| 27 | `theorem` | [lowerPolar_anti](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-anti.md) | 157 | `result-track:035042205c961a021fc7de117b1c086cea6229eb71eea01c4085d64e733df052` |
| 28 | `theorem` | [lowerPolar_upperPolar_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/lowerpolar-upperpolar-monotone.md) | 160 | `result-track:2aaf697eb414caa469e609d4bba0de40d2d57cbf75074b6739ee036972d6aeee` |
| 29 | `theorem` | [upperPolar_lowerPolar_monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/upperpolar-lowerpolar-monotone.md) | 163 | `result-track:3f2337c0f97a8d7c3dd136cffc91732ad654a6e6b457fbd2e2557e093f9f1464` |
| 30 | `def` | [extentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extentclosure.md) | 169 | `declaration-track:8f3e748050ea2e0ee0d8e3d847a4b5a3fe4e6512dd039b61b3027ad45b2b29ff` |
| 31 | `def` | [intentClosure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intentclosure.md) | 175 | `declaration-track:da3c86550dcc932be2c829dd22ef6656061fb1b6430444ed749a8ebe8d43922a` |
| 32 | `def` | [IsExtent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent.md) | 192 | `declaration-track:3d81df3fbee800c70a033df8cba61360fcfb1e620089d91ef5e91dc48208ca64` |
| 33 | `theorem` | [isExtent_lowerPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-lowerpolar.md) | 194 | `result-track:ea4314d616e5c87244e4ae6e82463da3656da4b52fd9189bcbb06a26d7311a69` |
| 34 | `theorem` | [isExtent_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-iff.md) | 196 | `result-track:97a4c1818ea9cd66c9f4fbf310c603ad9cf83c60604c82efd432eba004458326` |
| 35 | `theorem` | [IsExtent.univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-univ.md) | 202 | `result-track:158357051fdb00672cfdc1fd61feef2a80fdbbfd6995fed6bf025d4727a0bfc0` |
| 36 | `theorem` | [IsExtent.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-inter.md) | 205 | `result-track:4c3e1e2044fa743559a2afaba3462d8a0096ce03d83687bbf2172629258490be` |
| 37 | `theorem` | [IsExtent.iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-iinter.md) | 211 | `result-track:250a9601c1bdd4b8d9ace0fcf6cd16a04c51206f6cd0b61f8fc4fb96c41c8822` |
| 38 | `theorem` | [IsExtent.iInter₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-iinter-source-edition-2.md) | 215 | `result-track:a40b399b5e6b2e8f2a138ec60aff93ab351a19db3ece747c6197cc195ff6975b` |
| 39 | `theorem` | [IsExtent.lowerPolar_upperPolar_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-lowerpolar-upperpolar-subset.md) | 219 | `result-track:ce51017c4df3df485a4d86824558c5d6d680754f8c00a8578e94f186c31f8953` |
| 40 | `def` | [IsIntent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent.md) | 232 | `declaration-track:4beeef617bc568e9f1cbaaee8586e6ca5d0407a2871aa494e61eb3d3217dc54a` |
| 41 | `theorem` | [isIntent_upperPolar](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-upperpolar.md) | 234 | `result-track:c93e6678c0e07fa70afedc87ffd25ddcb79ebd5af5f6e95d8921930cab29f7c9` |
| 42 | `theorem` | [isIntent_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-iff.md) | 236 | `result-track:9a2f6e82763888b4cd634af3c3049a48a34680dfeb5c7d283b7221439bf37c62` |
| 43 | `theorem` | [IsIntent.univ](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-univ.md) | 240 | `result-track:5a18f2ebfe446a4957719ae5aa0068e20431cb9bc4819c39fc293852d2f43a0c` |
| 44 | `theorem` | [IsIntent.inter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-inter.md) | 242 | `result-track:552fad2d51cb13585370c5d2bc87410d322befc61ef2bd29d81d0c26491b7500` |
| 45 | `theorem` | [IsIntent.iInter](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-iinter-source-edition-2.md) | 246 | `result-track:8c3a0fd606acf90f4405f0c4478fe9905fbdfe0884f671acbe2ed96308c9d5be` |
| 46 | `theorem` | [IsIntent.iInter₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-iinter.md) | 250 | `result-track:26d064e3f9f3d5718928c638a85b8965f504f8db109eb4ffac190de1fdd93ad4` |
| 47 | `theorem` | [IsIntent.upperPolar_lowerPolar_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-upperpolar-lowerpolar-subset.md) | 254 | `result-track:5e9a2cf54d3012f3cdf3b874c02f57122c3805ebc9af4c5464950b17b2ff0699` |
| 48 | `structure` | [Concept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/concept.md) | 268 | `declaration-track:158d62e65600cca478ac0e01e5b28de20118a47d2b96e2f4f6cdf3ff8946758f` |
| 49 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ext.md) | 289 | `result-track:116c8022d84a99ed4dfd00abdb0b0d34576991fb8581f8e7510de7d4780e779b` |
| 50 | `theorem` | [ext'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ext-source-edition-2.md) | 296 | `result-track:2a86e7e3235230f98a5a6f97a155ace669a769e161b74c3a513b1916e0fc7b82` |
| 51 | `theorem` | [extent_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extent-injective.md) | 302 | `result-track:2a1d93980ada435e36b3e773cae2c5d6f36f8a0e55473ef6c35f9109f501b6eb` |
| 52 | `theorem` | [intent_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intent-injective.md) | 304 | `result-track:0c7e6cacc3b27cc1bf55bf7f775f9cfe9496e0ae856a3acda990907252654ace` |
| 53 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/copy.md) | 308 | `declaration-track:9df4381c8d8cb7055327de3ae79df86acec1395015c52d19fa1879571fe8a9ba` |
| 54 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/copy-eq.md) | 315 | `result-track:c7b3af4c411f7a83df993ddca572629e3f4cd2af6a8d1ba20c9aa49c6278cda7` |
| 55 | `def` | [ofIsExtent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofisextent.md) | 321 | `declaration-track:5cdce363fbb1756d8c171ba87c41854b46f49b701b97254cc47903bee4c96e98` |
| 56 | `theorem` | [isExtent_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-extent.md) | 328 | `result-track:254a8dcd78c30986ed15da7fb0df77d21ae35f6301d93e4d93d0686767476b1e` |
| 57 | `theorem` | [isExtent_iff_exists_concept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isextent-iff-exists-concept.md) | 331 | `result-track:df47d6c1ae3f4238973fdff9843be28f59dca01e5b01ce128b4955be763c3a36` |
| 58 | `def` | [ofIsIntent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofisintent.md) | 337 | `declaration-track:1e6202bd8afea2fa826adca142bf984a3e983e65fadcf3deeaa174d11ab658b2` |
| 59 | `theorem` | [isIntent_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-intent.md) | 344 | `result-track:0c81cf49e3f6f3d8b747836e242b9d801aa33461b2229504baf118fd869f06e4` |
| 60 | `theorem` | [isIntent_iff_exists_concept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isintent-iff-exists-concept.md) | 347 | `result-track:280b620afd02340e103a03710db91cf765f637d81f5200aea1b2a68b25ab68f1` |
| 61 | `def` | [ofObjects](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofobjects.md) | 353 | `declaration-track:ddbae43323b671879356b029ef633977de194a7361f7ebcd0766fdcda03135ff` |
| 62 | `abbrev` | [ofObject](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofobject.md) | 357 | `declaration-track:917f3ce005d15d9c31a5468d4168df894aceb28d7127bab310c2bbaedee3fc7b` |
| 63 | `theorem` | [ofObjects_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofobjects-extent.md) | 360 | `result-track:196b20da8c700763e042ab9fec0950f93cd2288e227ecb58fd0ee5551f1fe471` |
| 64 | `theorem` | [extent_ofObjects_of_isExtent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extent-ofobjects-of-isextent.md) | 363 | `result-track:442ed2da09cdd1679e1d26ef7567ccc9f06923f37a63c372d5612a0dfec86a2c` |
| 65 | `theorem` | [leftInverse_ofObjects_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/leftinverse-ofobjects-extent.md) | 366 | `result-track:0a70ea7dec3df6023a2aff41ad6025773d6fb2c50158a6ef2dfe3845e42a8ab4` |
| 66 | `theorem` | [leftInvOn_extent_ofObjects](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/leftinvon-extent-ofobjects.md) | 369 | `result-track:1b6340bebf3ae2251179a161d45357ec7170bab58f00a4606ab0cbd7c6f830d5` |
| 67 | `theorem` | [surjective_ofObjects](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/surjective-ofobjects.md) | 372 | `result-track:e8deddb3d03dc7126687b4f94abcb0bc9491e0dcdae9374b886b9b5c263f9832` |
| 68 | `def` | [ofAttributes](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofattributes.md) | 378 | `declaration-track:3de58f069314330fcd8296274ee2a0863998c83f8617df344c7ce8e26ec2fb68` |
| 69 | `abbrev` | [ofAttribute](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofattribute.md) | 382 | `declaration-track:6f679ba7aebaa6ffa2e8aae2e191c329d1a9e949b3bd5aca2b2d5f93e677962d` |
| 70 | `theorem` | [ofAttributes_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofattributes-intent.md) | 385 | `result-track:d4d58a93bfae772a9a8cf44fc100086f8509e93775dd936540dfdf96fb9765d7` |
| 71 | `theorem` | [intent_ofAttributes_of_isIntent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intent-ofattributes-of-isintent.md) | 388 | `result-track:3defad9190ae7ee297a515ea3595804b9bd3b03a142df57c497bff1fc316978a` |
| 72 | `theorem` | [leftInverse_ofAttributes_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/leftinverse-ofattributes-extent.md) | 391 | `result-track:dfde0149be372265a2f15825d4e567e4c3acb4587e92c9441107be8fb08acea7` |
| 73 | `theorem` | [leftInvOn_ofObjects_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/leftinvon-ofobjects-intent.md) | 394 | `result-track:4bc3e317cd1450d677f1697bed7c236bf5097f12456f9eb8d5fa1c219f8ee66f` |
| 74 | `theorem` | [surjective_ofAttributes](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/surjective-ofattributes.md) | 397 | `result-track:3106d68cbb487e3bbfa4700163f6d2acfd109a589f2c36ff5d768f12e77c5215` |
| 75 | `theorem` | [rel_extent_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/rel-extent-intent.md) | 400 | `result-track:18e51421b8cd9e2047a8e759f61426079eaf40be24b12679b114d33470e47261` |
| 76 | `theorem` | [disjoint_extent_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/disjoint-extent-intent.md) | 405 | `result-track:c3bb1d544feaf72935339eb7a1332d4471148506a1ce3c988e5bd749a0431c38` |
| 77 | `theorem` | [mem_extent_of_rel_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/mem-extent-of-rel-extent.md) | 410 | `result-track:d52fb695fdeb713cad2a3f3a6861d19f2b09570a8c90749e1fdd8c7f9f9d28a6` |
| 78 | `theorem` | [mem_intent_of_intent_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/mem-intent-of-intent-rel.md) | 415 | `result-track:a2848806f1a9d303b865cc72f6fefab07ae36c5bb67137897f52d40d6ce13ee0` |
| 79 | `theorem` | [codisjoint_extent_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/codisjoint-extent-intent.md) | 420 | `result-track:d0ec52a05347e24102c3c46d746e67942c71af1e562402e17bcb4f02aee978e8` |
| 80 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance.md) | 429 | `declaration-track:13eb09b6797b6e2decb13c82953fe3f1ce511b2670aa2b7b55eefbcf78967d9f` |
| 81 | `theorem` | [isCompl_extent_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/iscompl-extent-intent.md) | 431 | `result-track:bd6d348b5b6aed3873df92a310bbd4ef09a4b7c3a644f54ed57e8c1f44ca2a76` |
| 82 | `theorem` | [compl_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/compl-extent.md) | 436 | `result-track:53c595022c251098fd05f07d67f710b590a288a07396695f8e048ab2d3f56de6` |
| 83 | `theorem` | [compl_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/compl-intent.md) | 440 | `result-track:e22eda9922394e714fa7363182474b4a1b2835577da92e1ac9f5acc1b900ba61` |
| 84 | `theorem` | [extent_subset_extent_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extent-subset-extent-iff.md) | 444 | `result-track:19f2f0f48e347b30bbe61de2c5d3098b90c53053e21dc32b50752c64b2883b14` |
| 85 | `theorem` | [extent_ssubset_extent_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extent-ssubset-extent-iff.md) | 448 | `result-track:cde74bf5240be8d15f1bc812497c8d5c56fd90bf7ab108661980c5e8ebe97944` |
| 86 | `theorem` | [intent_subset_intent_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intent-subset-intent-iff.md) | 452 | `result-track:91b9b1f7ec0d28582610f68e75a5a670e61b80ffeb4d5fa5045c911d8e3703e7` |
| 87 | `theorem` | [intent_ssubset_intent_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intent-ssubset-intent-iff.md) | 460 | `result-track:74a60ea7f183e404cafe407a2e2853fece295131c93d11f5dd3da43cb838a087` |
| 88 | `theorem` | [strictMono_extent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/strictmono-extent.md) | 464 | `result-track:b4f30dbde9c3cac96e36a90a880dc5c07d3fcce97b989470148ece6e17dade2a` |
| 89 | `theorem` | [strictAnti_intent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/strictanti-intent.md) | 467 | `result-track:58f7353c6cf6345f53783586738e688bbc0934d2bae72a26f554d45185ec150f` |
| 90 | `theorem` | [isLowerSet_extent_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/islowerset-extent-le.md) | 471 | `result-track:4d0d80ca287adb4b356ce2644f5cee55eb97b2191e7cce2412bd7fb62e598450` |
| 91 | `theorem` | [isUpperSet_intent_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isupperset-intent-le.md) | 476 | `result-track:89e56dc64024d50894666178d9b7805f6101d7658c09806cc7592a892453834c` |
| 92 | `theorem` | [isLowerSet_extent_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/islowerset-extent-lt.md) | 481 | `result-track:642869e770a1e3afd4c022619e07a70d0736c8cd972077a2512ecb0fe78be852` |
| 93 | `theorem` | [isUpperSet_intent_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/isupperset-intent-lt.md) | 489 | `result-track:e352679fd96d557f968f20df32a63ef30ba3ff50374344acd8156e8dad193f0c` |
| 94 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 497 | `declaration-track:e83f19049a50e65a3aa119e6d65aa3e42ba16c88ed3899923a1fd0081eb2918a` |
| 95 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 504 | `declaration-track:8c418f2eb13d599c90e7f4bd5ac1dccd88d11a3377d31298c8d722ad19c50ada` |
| 96 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 510 | `declaration-track:2129bdd83039d63572365847c82ec8887968b085ea1bf9037d65f1d1ac2eac3e` |
| 97 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 513 | `declaration-track:363d65554d0595395168a5adb40fe3c57354c4b300810d79047f7938802c6628` |
| 98 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 516 | `declaration-track:825a361d11c22fdb7caae7b5a0511f76fb9b9f3739be523cd52fc32196e8f115` |
| 99 | `theorem` | [ofObjects_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofobjects-le-iff.md) | 519 | `result-track:d36ee152b462adff840bda6df89638dec50ed507e7550e8b3bb9f6e7b3727dc6` |
| 100 | `theorem` | [le_ofObjects_of_extent_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/le-ofobjects-of-extent-subset.md) | 524 | `result-track:3ba7e7111035598c3867e7504dd0a0ede074665e4e014e9e7ea505611db84b8c` |
| 101 | `theorem` | [le_ofAttributes_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/le-ofattributes-iff.md) | 528 | `result-track:bb694434ac31ea732aad5917ca0c35add82f2bb29c8b2996c5eadf05ca575f3c` |
| 102 | `theorem` | [ofAttributes_le_of_intent_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofattributes-le-of-intent-subset.md) | 533 | `result-track:acba233548ed2e6a22b8540c125ec9f4315c3df0410fcb9151b58003fe0c41b3` |
| 103 | `theorem` | [ofObject_le_ofAttribute_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/ofobject-le-ofattribute-iff.md) | 537 | `result-track:a19e643278f7d29ef9dd0a7fcd6b5ffc2561c44677d1b35e55cb9f52367deb05` |
| 104 | `instance` | [instBoundedOrderConcept](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instboundedorderconcept.md) | 541 | `declaration-track:1bb30aef2f1456916d4f099605c99b9ebf579e52e4f42b437e66ad8bf02349cc` |
| 105 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 548 | `declaration-track:a771ca6ef9dd2cd57ef3601b9584cdf101673193952e0d9fb7575b9b702d45a5` |
| 106 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 552 | `declaration-track:b8d400a7f01741755046a3d3aa58c3d020415fc7250d891b2f208d99cc4f1ca9` |
| 107 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 559 | `declaration-track:8b0afb7580397eb7260f91241460d07507299197173a872d0d9d3e0e0af6a475` |
| 108 | `theorem` | [extent_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extent-isup.md) | 568 | `result-track:b4404641d0de2eeb93c9eba199f2f276372512ec377766e1171db0763f381055` |
| 109 | `theorem` | [intent_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intent-isup.md) | 573 | `result-track:2a52a3596cf5d37fb561890755931df6ff8a002ae57a71478289ed85d247807d` |
| 110 | `theorem` | [extent_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/extent-iinf.md) | 577 | `result-track:39c0bcef3f0ba433fdaa226d46b4d8f8a654521575ba18b9df89de947cf294f4` |
| 111 | `theorem` | [intent_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/intent-iinf.md) | 581 | `result-track:502e0da0b91261f9a1092eee4b81765227649e7698cfcebfaa1ad974d88f316d` |
| 112 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 585 | `declaration-track:e1323f3dfea21cb83201bd6e7fc8e1d771f69033edca54c57c08a76701433b5c` |
| 113 | `def` | [swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/swap.md) | 590 | `declaration-track:eb38add1d049d4dac0b2dff11be255f8dcfda0c9a26f34705e897e8a78adebeb` |
| 114 | `theorem` | [swap_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/swap-swap.md) | 594 | `result-track:e53a8e39053ad9e55611b72e9982a25d6f5ef20fda6d583e768a6de56f926725` |
| 115 | `theorem` | [swap_le_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/swap-le-swap-iff.md) | 598 | `result-track:4760cc12ac5665f32498f6405b57870653fa6f5ababfb037116a92dc939f4981` |
| 116 | `theorem` | [swap_lt_swap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/swap-lt-swap-iff.md) | 602 | `result-track:7932828561f357152d06bb4b06f9ad1e96f179ccc50c1bf8a711c8e6893897ea` |
| 117 | `def` | [swapEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/ConceptNamespacedPublic.lean/declarations/swapequiv.md) | 607 | `declaration-track:2ea9ebfa3b503b512134ab29f8cb4123fa60e74eb7ef13b72f2a6b71314d2f66` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85c2bdfdd09428f1c75b47ad8b0b04e9487f09a72a495a72df1dbc48a39a25de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantcca848229e5b97c54279d3b511cd55059dcb36530a74112fd39022525f944293.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Concept/Variantcca848229e5b97c54279d3b511cd55059dcb36530a74112fd39022525f944293.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
