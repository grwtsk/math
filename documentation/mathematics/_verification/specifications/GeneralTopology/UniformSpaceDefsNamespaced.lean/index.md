# Verification target: Uniform Space Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a802f9c93d7c3ba70440448f5cb8b5bd1512a30",
  "lexical_observation_count": 128,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a802f9c93d7c3ba70440448f5cb8b5bd1512a30`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/idrel.md) | 129 | `declaration-track:52c87379d3c543f8004d92884db9b641e79762e620d97bb2aaab8b5868aa013b` |
| 2 | `theorem` | [mem_idRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-idrel.md) | 133 | `result-track:df92aa231cf943bfb2de94a1f4439d9ec1dc95aab9380eac8a68dfcbcab4783f` |
| 3 | `theorem` | [idRel_subset](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/idrel-subset.md) | 137 | `result-track:373b09e9aa47db27f8031eb121fc7d284a6dd472dc3aa2ecfc50097f45614cc8` |
| 4 | `theorem` | [eq_singleton_left_of_prod_subset_idRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/eq-singleton-left-of-prod-subset-idrel.md) | 140 | `result-track:48ea25dadb0d9ea36401be0cbda7662d8b87dc27b61d9aa53adedf226190fa2a` |
| 5 | `theorem` | [eq_singleton_right_prod_subset_idRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/eq-singleton-right-prod-subset-idrel.md) | 150 | `result-track:6e5f20ff6fba7c7379897d7c4ffc4f5194f37f0ab6b06f1221370b4c7531bc76` |
| 6 | `theorem` | [eq_singleton_prod_subset_idRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/eq-singleton-prod-subset-idrel.md) | 156 | `result-track:997371466ba4ebdf66f4282c54af00c3c91e3d2bef75007b8cd011f0736a41ce` |
| 7 | `def` | [compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comprel.md) | 166 | `declaration-track:ec7fa062880920eab0db23cb497f3a3ab30a76482c137c9d11b0300f50d2f69f` |
| 8 | `theorem` | [mem_compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-comprel.md) | 174 | `result-track:6dfdb75aefb0e3edaff1a84d9b20f03148aaa4fcd70957376cd65f76d79e5eba` |
| 9 | `theorem` | [swap_idRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/swap-idrel.md) | 179 | `result-track:554609ef4f4e8555bae19637c1473f70bab726ec5cdd0107793d5f1efdc2f76e` |
| 10 | `theorem` | [Monotone.compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/monotone-comprel.md) | 182 | `result-track:8e5f31a0bfa3aebf038f1c94f14a8c48b3e3017eae68180e5211561f7c12ab97` |
| 11 | `theorem` | [compRel_mono](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comprel-mono.md) | 186 | `result-track:3ace55e2167c235d43cb939c181b64ed4c57cb608f6a2166d32122c352fa7f1b` |
| 12 | `theorem` | [prodMk_mem_compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/prodmk-mem-comprel.md) | 189 | `result-track:548d23b23e962b2c38f44e088943c6f471650c6ecc01a3006bbb38ce73ec1b49` |
| 13 | `theorem` | [id_compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/id-comprel.md) | 197 | `result-track:d7302da1f80612735c8715c567ab1049cd4986f7bfce4535804d575212a799ef` |
| 14 | `theorem` | [compRel_assoc](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comprel-assoc.md) | 200 | `result-track:465a6fdd63b2cfa1c7e4e8475721505a2f41221907a76a8e2213b8363f946567` |
| 15 | `theorem` | [left_subset_compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/left-subset-comprel.md) | 203 | `result-track:8a0cf2c511bd1a8bb8bfeb487624400770bb48f25288c7eba9deb96ba9a453b2` |
| 16 | `theorem` | [right_subset_compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/right-subset-comprel.md) | 206 | `result-track:29711744258d6821ecec60c14a12a51c1508a62fca172f104608db3e5aeba494` |
| 17 | `theorem` | [subset_comp_self](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/subset-comp-self.md) | 209 | `result-track:5c5a389f20cec48d91f25238ed66e22aaa6be50fa0999cace8dd086245d5777f` |
| 18 | `theorem` | [subset_iterate_compRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/subset-iterate-comprel.md) | 212 | `result-track:3c79b91c3e73fa784ee0b70d102001d3076e8f1eb006c54cb40ba9f8e6c6b8f1` |
| 19 | `def` | [IsSymmetricRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel.md) | 219 | `declaration-track:34afc616dd2950b63238ff0b59736188d07382053927c7cdaf98488c2a496108` |
| 20 | `def` | [symmetrizeRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symmetrizerel.md) | 226 | `declaration-track:3c7ed3c67eb5084fb2628d4c0b70c921dbd8698855f69f8e0a6cf3e65318026b` |
| 21 | `theorem` | [symmetric_symmetrizeRel](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symmetric-symmetrizerel.md) | 229 | `result-track:cb5942a78c1c2de17f6e66094a5193b4c79e81c22e984a28af4ca820239efc4f` |
| 22 | `theorem` | [symmetrizeRel_subset_self](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symmetrizerel-subset-self.md) | 232 | `result-track:693f384d1eaac31361528ac780c4625e5c1db3a1e55607d5212da83dd0ea40af` |
| 23 | `theorem` | [symmetrize_mono](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symmetrize-mono.md) | 236 | `result-track:6a51178c8efa5904c84e764be95de739f1d3b2ae5849164794573784d9fe0860` |
| 24 | `theorem` | [IsSymmetricRel.mk_mem_comm](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel-mk-mem-comm.md) | 239 | `result-track:40ebea6394b9a83620f62635ade73eb49d74fe0ba1876f990555df154756ea53` |
| 25 | `theorem` | [IsSymmetricRel.eq](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel-eq.md) | 246 | `result-track:d23ccb6a0c6fc84efb6106099cd5036e2adcf7893cf3568d3b5e92e3153ab25f` |
| 26 | `theorem` | [IsSymmetricRel.inter](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel-inter.md) | 252 | `result-track:254747ef28782e54685f6ef5515f632d66780c0b880abe79a5dec57e5ffee00f` |
| 27 | `theorem` | [IsSymmetricRel.iInter](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel-iinter.md) | 258 | `result-track:dc71763e307aecf10d613c0105ef04e0ba9c256396196c1073ff00a40c99bf42` |
| 28 | `lemma` | [IsSymmetricRel.sInter](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel-sinter.md) | 262 | `result-track:416d78f37265ceafbf5bfcf137b538987fc09db6d8f6e65af997a7f183ac5336` |
| 29 | `lemma` | [IsSymmetricRel.preimage_prodMap](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/issymmetricrel-preimage-prodmap.md) | 267 | `result-track:6012dbfa4cf70b18718b182b339873a5dc20a7d38ed0dcae60770e7b1bcd93ca` |
| 30 | `structure` | [UniformSpace.Core](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core.md) | 273 | `declaration-track:fa1bfa897f69aad1b40dfac729269ff7c092b882f83a9e0a5d8068ef7b023f1d` |
| 31 | `theorem` | [UniformSpace.Core.comp_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core-comp-mem-uniformity-sets.md) | 284 | `result-track:f379ca4d1d86d69b1319f3759c35ab3bc300a73d7629bb5d1bcc0c19128fcce7` |
| 32 | `def` | [UniformSpace.Core.mk'](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core-mk.md) | 290 | `declaration-track:42aa282ba8a1ddf92a23ea89274fe83b70b0d504d4c28438b03accd6d6b3a659` |
| 33 | `def` | [UniformSpace.Core.mkOfBasis](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core-mkofbasis.md) | 298 | `declaration-track:08c9ff487307d3d44511f6fdb560a1580c7b09eb1c025c5c40be086ad6187d79` |
| 34 | `def` | [UniformSpace.Core.toTopologicalSpace](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core-totopologicalspace.md) | 308 | `declaration-track:4f382ee739c5409da993d870e9ea9801b770946e521c645febe8f9c2af3a85ad` |
| 35 | `theorem` | [UniformSpace.Core.ext](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core-ext.md) | 312 | `result-track:0b82ae84abbe5f3cdb66783e98c7071675762a3dc18b70e3e71f29e572e2cf1f` |
| 36 | `theorem` | [UniformSpace.Core.nhds_toTopologicalSpace](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-core-nhds-totopologicalspace.md) | 316 | `result-track:61c62f4663d4b2344cec8f47bc24803332985c1d2b37dda92750ca80c264733c` |
| 37 | `class` | [UniformSpace](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace.md) | 335 | `declaration-track:68d656b95b50d77cf6942dda2277e4aea5370352b0a42c022cdcac335c744578` |
| 38 | `def` | [uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformity.md) | 348 | `declaration-track:697e578aa9dcaacf97c6928a847b4b3a2456b586b17a8d15c6274da3db357439` |
| 39 | `abbrev` | [UniformSpace.ofCoreEq](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ofcoreeq.md) | 359 | `declaration-track:0053c7e63368727c62007c9f8f771d5c764467ea0e2321a3f87ad1ef136cfca1` |
| 40 | `abbrev` | [UniformSpace.ofCore](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ofcore.md) | 366 | `declaration-track:f5a70f1a73cbfdd5b4169421265345ab6ffab39f74b918815474649922f8a663` |
| 41 | `abbrev` | [UniformSpace.toCore](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-tocore.md) | 370 | `declaration-track:96dd35085dbb858057ab448fc31f99269be046374924c587b3f4579a92fe7240` |
| 42 | `theorem` | [UniformSpace.toCore_toTopologicalSpace](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-tocore-totopologicalspace.md) | 379 | `result-track:81f84e5f42d7509a20dc8f804c787b68829a5e9e64c4e1ddbb9fb9aa54d271bf` |
| 43 | `lemma` | [UniformSpace.mem_uniformity_ofCore_iff](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-mem-uniformity-ofcore-iff.md) | 384 | `result-track:4efc32013d8f4082b4c9f1f7f04994a4e643beb38cae0c4eb286858e10b8d4a2` |
| 44 | `theorem` | [UniformSpace.ext](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ext.md) | 389 | `result-track:bf8557affea2f1c669dce10c9347a360bfd1098a4aed13361101d83dd87179ed` |
| 45 | `theorem` | [UniformSpace.ext_iff](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ext-iff.md) | 395 | `result-track:07386d7de18568b57df01d398a7c7a8f0240b5ac5306b9fbb2b0d85ba15bbefb` |
| 46 | `theorem` | [UniformSpace.ofCoreEq_toCore](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ofcoreeq-tocore.md) | 399 | `result-track:7592a28574ebef07fdfbc1fea90695bc11fabb837cb9c2af18fa9e3ca902f687` |
| 47 | `abbrev` | [UniformSpace.replaceTopology](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-replacetopology.md) | 405 | `declaration-track:3ce6691dff9fbe08ea60509333cb2107d13c74ec6bb9937fbfa4bc7c95f1c809` |
| 48 | `theorem` | [UniformSpace.replaceTopology_eq](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-replacetopology-eq.md) | 411 | `result-track:6b9c5916a10ea471c1e18880c0135fa85da5321332536d10c9bca508dfdf56e3` |
| 49 | `theorem` | [nhds_eq_comap_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-eq-comap-uniformity-source-edition-2.md) | 419 | `result-track:9e3c1f7b33c58c405337ff37c43fa22a5be632a80cc8854c9ea4b9d180286c5e` |
| 50 | `theorem` | [isOpen_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/isopen-uniformity.md) | 422 | `result-track:adc5f3498e2ca794e3885b713ce79fdcf9d47ea47ee9720c05e104c93dfc4aa3` |
| 51 | `theorem` | [refl_le_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/refl-le-uniformity.md) | 426 | `result-track:61158ac966da61e62bf9e53ac8be9e0f8988d212c22f3f8f0aeabdfa9cc3683c` |
| 52 | `instance` | [uniformity.neBot](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformity-nebot.md) | 429 | `declaration-track:ec82484e106611e8fc0c5341ddfdd76cf523af7da8657b3b9507a8511c6e253c` |
| 53 | `theorem` | [refl_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/refl-mem-uniformity.md) | 432 | `result-track:4667857d598ceae7f34bdcec159dcb5c3e648a6d1c962f4244dc083e57f0575d` |
| 54 | `theorem` | [mem_uniformity_of_eq](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-uniformity-of-eq.md) | 435 | `result-track:256ec34fe80f162397ca57e001ebd55c4574cd439fd92dd6bc77ad2ba9e8ceed` |
| 55 | `theorem` | [symm_le_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symm-le-uniformity.md) | 438 | `result-track:bb2115183a223d55345cdd7ac29316aaf4b11d24ebd14183429a0655c9519adf` |
| 56 | `theorem` | [comp_le_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp-le-uniformity.md) | 441 | `result-track:204415d0ab9681c1282bf3e1a11235ae9e6d376a5662cc38bb153d5235c091af` |
| 57 | `theorem` | [lift'_comp_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/lift-comp-uniformity.md) | 444 | `result-track:7dbe3b8e50d28f51d91e5c0c2fd4a8f7311c6b541db039c1cd0978427eb1a388` |
| 58 | `theorem` | [tendsto_swap_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/tendsto-swap-uniformity.md) | 448 | `result-track:c103f7f0d8e60aa666319955798a0a983ecee5df7f114a3c44c4cb3b6577809b` |
| 59 | `theorem` | [comp_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp-mem-uniformity-sets.md) | 451 | `result-track:3c3ab5637b3866622d37b7def9a6a5bf01e75725f1caf1fb7b2d245998f79274` |
| 60 | `theorem` | [Filter.Tendsto.uniformity_trans](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/filter-tendsto-uniformity-trans.md) | 455 | `result-track:9c67fbe4afa6329ba506288e854269750e8e8e3482f34b92ef9f7c5054ab5ad5` |
| 61 | `theorem` | [Filter.Tendsto.uniformity_symm](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/filter-tendsto-uniformity-symm.md) | 462 | `result-track:6b847d0efc0b2cd86facece92e2a1e3367a2ed231ab7c0e1871628e2e14860be` |
| 62 | `theorem` | [tendsto_diag_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/tendsto-diag-uniformity.md) | 467 | `result-track:da64c009168fb9a03a019790bcc5f570e034249cfa4b930987f0fc096321aec1` |
| 63 | `theorem` | [tendsto_const_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/tendsto-const-uniformity.md) | 471 | `result-track:f4b6c80b5b473527659a12c691a2f3b542d6617d38d17cd53f03680b165b0b4d` |
| 64 | `theorem` | [symm_of_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symm-of-uniformity.md) | 474 | `result-track:3cc0fed0a3d2f2970e501c8ea49461f6b9825e9c000144838087cc5435a0c41f` |
| 65 | `theorem` | [comp_symm_of_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp-symm-of-uniformity.md) | 479 | `result-track:de97b7436f595122d20facc7abea3d032f1118ae14dfc5d90024dae57e55705a` |
| 66 | `theorem` | [uniformity_le_symm](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformity-le-symm.md) | 485 | `result-track:4924f602b7f85f277ae3f82aed44c44c9631a4b2a2201a82cd33657972600e9b` |
| 67 | `theorem` | [uniformity_eq_symm](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformity-eq-symm.md) | 488 | `result-track:fd1ad4cd07796fa2d83b9cece57987308b14eb978311a4d81c5f25e55acfa6ff` |
| 68 | `theorem` | [comap_swap_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comap-swap-uniformity.md) | 492 | `result-track:572cbdf1eae01fde8606a68af4a11add61edba93ba28a26002ee73eaebc80603` |
| 69 | `theorem` | [symmetrize_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/symmetrize-mem-uniformity.md) | 495 | `result-track:fb7b58288a7eaa593ddd365a09117ce79d1b804169deb7ccba61d99aee9aa3f3` |
| 70 | `theorem` | [UniformSpace.hasBasis_symmetric](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-hasbasis-symmetric.md) | 501 | `result-track:e26c1f17319b6295d3889e0734d076323ee79112fb1959aef394ccecb35600d6` |
| 71 | `theorem` | [uniformity_lift_le_swap](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformity-lift-le-swap.md) | 507 | `result-track:595483715fb27617db8c1446aaad9f0707b786a797955afb0a45b6b710aab0bc` |
| 72 | `theorem` | [uniformity_lift_le_comp](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformity-lift-le-comp.md) | 514 | `result-track:6d49916d581cbe02b678b6c24d81156305f19366b46d4d6b9a0ec5ba5df95eea` |
| 73 | `theorem` | [comp3_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp3-mem-uniformity.md) | 523 | `result-track:8a78a2b35eeaa6c01c9c8459cbcc4d58877d6986231cb0b85daac245ceedb98e` |
| 74 | `theorem` | [comp_le_uniformity3](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp-le-uniformity3.md) | 529 | `result-track:b2b14e9b2de27b8e29beee8942756977d4d51984800e01f3f0f362254d84a322` |
| 75 | `theorem` | [comp_symm_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp-symm-mem-uniformity-sets.md) | 534 | `result-track:502cc29624727e96031407cc70b9a0cd57b2afbf5e5c97c69834f5491e558f25` |
| 76 | `theorem` | [subset_comp_self_of_mem_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/subset-comp-self-of-mem-uniformity.md) | 543 | `result-track:8b40f9632a91ab7b561f151dec78bc2bf15248841d4eabdcf5947fb0c605c100` |
| 77 | `theorem` | [comp_comp_symm_mem_uniformity_sets](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/comp-comp-symm-mem-uniformity-sets.md) | 546 | `result-track:32c9092b8429b364fdb3dbcaf16a3c50273e5c957027970ff977895d340151ff` |
| 78 | `def` | [ball](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball.md) | 570 | `declaration-track:2d08219049b69c7ef95ed50daed604bb25a2cfe7d12f0babbe55027df32574de` |
| 79 | `lemma` | [mem_ball_self](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-ball-self.md) | 574 | `result-track:581f8bb314550a0ed1b805afb6a507676fd79a0770a0765c6a860e402c7b8426` |
| 80 | `theorem` | [mem_ball_comp](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-ball-comp.md) | 577 | `result-track:a2d2006a93209f5fed8a1496cc4a57db7194e4217d92dee156e52e2b64ba27d7` |
| 81 | `theorem` | [ball_subset_of_comp_subset](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-subset-of-comp-subset.md) | 581 | `result-track:6dec5af344f6f1105e469a7eaeaece8f70a9c00bafdff881742a0b324d185588` |
| 82 | `theorem` | [ball_mono](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-mono.md) | 584 | `result-track:fa9ab6efac6a20ef30188f808c17e06a1d37867bbd70413a2d693b79538351d1` |
| 83 | `theorem` | [ball_inter](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-inter.md) | 587 | `result-track:8b9abfaa7160dc79281206d25949324ba172cb53a5a9537d33ee96951529341d` |
| 84 | `theorem` | [ball_inter_left](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-inter-left.md) | 590 | `result-track:749f941f4961c66990102d06fabe0eb75726f05255b484aae0c3237166ed53b1` |
| 85 | `theorem` | [ball_inter_right](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-inter-right.md) | 593 | `result-track:0a94fad322610b1326c8918aafbcc847bfa613aee560a7de02413f846ddb2bfb` |
| 86 | `theorem` | [ball_iInter](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-iinter.md) | 596 | `result-track:099d5e771641e6fada2f68ad3e379c6da77f599034b280b253d474fb574467e1` |
| 87 | `theorem` | [mem_ball_symmetry](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-ball-symmetry.md) | 599 | `result-track:96f2d05277dc8c85ce66a662d210edb96c96707b6ae41205d7e01f2bf9443449` |
| 88 | `theorem` | [ball_eq_of_symmetry](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/ball-eq-of-symmetry.md) | 605 | `result-track:f93237da0a6f7307dd88d87be90127636a937d449a285631bc950dcf3b15c69d` |
| 89 | `theorem` | [mem_comp_of_mem_ball](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-comp-of-mem-ball.md) | 611 | `result-track:2eb570d23b2f8c93190b663791384d892fbd350686a3ae82c8a110717eb71777` |
| 90 | `theorem` | [mem_comp_comp](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-comp-comp.md) | 616 | `result-track:d936d5be16fd6e059200c6ca253264ac58cb89c92d854b91575451d1e5701078` |
| 91 | `theorem` | [mem_nhds_uniformity_iff_right](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-nhds-uniformity-iff-right.md) | 634 | `result-track:b8743700c8fd9f32c5b01c9c6e22241374f6f6a103b88b2a9c35a77cb9740500` |
| 92 | `theorem` | [mem_nhds_uniformity_iff_left](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-nhds-uniformity-iff-left.md) | 638 | `result-track:c07b7140558d1604129473fe14ae4d92d0c582bee37a98374aa895cd026ddbac` |
| 93 | `theorem` | [nhdsWithin_eq_comap_uniformity_of_mem](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhdswithin-eq-comap-uniformity-of-mem.md) | 643 | `result-track:e09eb1adb238264e1263e6dbb80265957abde84ab1f3a2b9d40b9d6a7ec41dff` |
| 94 | `theorem` | [nhdsWithin_eq_comap_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhdswithin-eq-comap-uniformity.md) | 647 | `result-track:f53a934e09bc1edf3072de34c18db5cf74f5aad83058bf2c5f203d638cf335eb` |
| 95 | `theorem` | [isOpen_iff_ball_subset](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/isopen-iff-ball-subset.md) | 652 | `result-track:d1cd3adc31ec48e8ca40ca9406005d6911882d288cbb9dd30845b79eaebf8f10` |
| 96 | `theorem` | [nhds_basis_uniformity'](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-basis-uniformity.md) | 655 | `result-track:e0f33dab125e722c6d854d79189712dd1697cc3d09170f3c5cbd872b1bf1ab96` |
| 97 | `theorem` | [nhds_basis_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-basis-uniformity-source-edition-2.md) | 660 | `result-track:ebd779ca09ce98a00aa67ca0312c297fff780168b0131c60f113fde2f8769b47` |
| 98 | `theorem` | [nhds_eq_comap_uniformity'](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-eq-comap-uniformity.md) | 666 | `result-track:070362eb2030c6a5c4d96e01e0232abae0f08a616fc0f03910ce9eed2b9c05fe` |
| 99 | `theorem` | [UniformSpace.mem_nhds_iff](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-mem-nhds-iff.md) | 669 | `result-track:bb76989a9ff697f859df10d1920bf13301732cce39d836507c7cd728e3490467` |
| 100 | `theorem` | [UniformSpace.ball_mem_nhds](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ball-mem-nhds.md) | 673 | `result-track:a46d56a6cf42563995f1f2d8525f488799ff858b5baee19f92b953fe60726c64` |
| 101 | `theorem` | [UniformSpace.ball_mem_nhdsWithin](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-ball-mem-nhdswithin.md) | 677 | `result-track:f45ff85941f158f63d3fcbb172841078830e2e39bada96cdfa1712838d3b1d43` |
| 102 | `theorem` | [UniformSpace.mem_nhds_iff_symm](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-mem-nhds-iff-symm.md) | 682 | `result-track:bb64e4702757f1a7dab26bf91710b18202c5d1d1a9ab7d5121efe23957e0b970` |
| 103 | `theorem` | [UniformSpace.hasBasis_nhds](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-hasbasis-nhds.md) | 692 | `result-track:bec808183a29885651af489c801c1c1e7dc844726d3bbd4c9826639acdeb3ab2` |
| 104 | `theorem` | [UniformSpace.mem_closure_iff_symm_ball](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-mem-closure-iff-symm-ball.md) | 698 | `result-track:7ad0985f53dbcaf95aa5c81c34e6e6491b7f29c12be8170a53b3ea0b10600806` |
| 105 | `theorem` | [UniformSpace.mem_closure_iff_ball](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformspace-mem-closure-iff-ball.md) | 702 | `result-track:65b5cd5708bcc4a74e7598b329e4596ef9ad7eb17f584cef5a2b4d6c98882169` |
| 106 | `theorem` | [nhds_eq_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-eq-uniformity-source-edition-2.md) | 706 | `result-track:9eb7744ecc5653e00ebb2928a4c6d18852551cac3c3fe1d2a50dbecca92c1117` |
| 107 | `theorem` | [nhds_eq_uniformity'](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-eq-uniformity.md) | 709 | `result-track:7371a73a7c5415018187082b0ebf96ac3ced1730f42247dd76d758c268e64f58` |
| 108 | `theorem` | [mem_nhds_left](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-nhds-left.md) | 712 | `result-track:a6f0702051656c02bc0fa4c24d289941fd196e98f12ee37c9f342ae3abf71919` |
| 109 | `theorem` | [mem_nhds_right](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/mem-nhds-right.md) | 715 | `result-track:98f4c591782e6fdbaff92286682f17c5162dd8a27d4d4959f1d389e70ed107d8` |
| 110 | `theorem` | [exists_mem_nhds_ball_subset_of_mem_nhds](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/exists-mem-nhds-ball-subset-of-mem-nhds.md) | 718 | `result-track:ce889fb035d4c993fe53538d6fb0fbfc34a6d3e1f91010f6f49d18761d169b85` |
| 111 | `theorem` | [tendsto_right_nhds_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/tendsto-right-nhds-uniformity.md) | 723 | `result-track:86933255f5052fa445cf0cfe167d08ea3b4be44d94967932afc7a031f75325c6` |
| 112 | `theorem` | [tendsto_left_nhds_uniformity](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/tendsto-left-nhds-uniformity.md) | 726 | `result-track:1fc68394e6a4ce50a932d09277f185bae1df098119361b3161a497750549a7cf` |
| 113 | `theorem` | [lift_nhds_left](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/lift-nhds-left.md) | 729 | `result-track:f0ef20ff65e2e841e7f9c15e9c5ad00e04955d950da9ffca02d8643b3cd49850` |
| 114 | `theorem` | [lift_nhds_right](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/lift-nhds-right.md) | 734 | `result-track:bcb397e0c4e6210934d79722ede9bfd38dd93643e433a1ce38659c2a1b61c1d6` |
| 115 | `theorem` | [nhds_nhds_eq_uniformity_uniformity_prod](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/nhds-nhds-eq-uniformity-uniformity-prod.md) | 739 | `result-track:03e03c548efc9452a007210c44af9e06c74501f1ad0591f2442946c8aa3fbfd6` |
| 116 | `theorem` | [Filter.HasBasis.biInter_biUnion_ball](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/filter-hasbasis-biinter-biunion-ball.md) | 745 | `result-track:92b42cfa31d63370f85370c35bd7d663c675d0e9074f8fb8608b2ffe27228162` |
| 117 | `def` | [UniformContinuous](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous.md) | 757 | `declaration-track:1378e63b686f430b13a23ec65bf75f96de5006375f6e6dcab17608258e6b2f5f` |
| 118 | `def` | [UniformContinuousOn](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuouson.md) | 767 | `declaration-track:d2c1c15dd2b9c08ea6e5cecb97c292beda6009043b0212ca563bb6c32591713a` |
| 119 | `theorem` | [uniformContinuous_def](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-def.md) | 770 | `result-track:1beb2c25ea04fee504df58dfc42decef5f6e991f497b7cbd7c4e2251500c0baf` |
| 120 | `theorem` | [uniformContinuous_iff_eventually](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-iff-eventually.md) | 774 | `result-track:6d1271ae82fec7612ba9bded4fe5356f51cff95029e1c2844d180426f1e1abb5` |
| 121 | `theorem` | [uniformContinuousOn_univ](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuouson-univ.md) | 778 | `result-track:bd3bb64e23d4a54c2604c56c5a2cc2f56c94be92393b863434fb04470d22ade4` |
| 122 | `theorem` | [uniformContinuous_of_const](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-of-const.md) | 782 | `result-track:fa181717dd75362450195b92e2b43c5f7d6f0543a1bd32abc246a4cbd1a453ca` |
| 123 | `theorem` | [uniformContinuous_id](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-id.md) | 788 | `result-track:de81b42fe826dc0ceca030920fdb0b0df7def48bdb31da74e8f0274a966e8ec5` |
| 124 | `theorem` | [uniformContinuous_const](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-const.md) | 790 | `result-track:db61b91ebf956d846d9ca1ae2a43c5d3411357e0f601a6809fce3b5133f6e773` |
| 125 | `theorem` | [UniformContinuous.comp](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-comp.md) | 793 | `result-track:63d2936979ec96b5691c915ef5ccf08956a11d825dcbee8a05dd710c4468818c` |
| 126 | `theorem` | [UniformContinuous.iterate](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/uniformcontinuous-iterate.md) | 799 | `result-track:afa62d688949a24cc21a181548bd76c9f3b514006f2c9f3c460256e145fe2fe8` |
| 127 | `theorem` | [Filter.HasBasis.uniformContinuous_iff](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/filter-hasbasis-uniformcontinuous-iff.md) | 805 | `result-track:b9a32857f8cdea3cfb90fa95878acac2752ee162b7af89accbd25eef6ad7988d` |
| 128 | `theorem` | [Filter.HasBasis.uniformContinuousOn_iff](../../../../GeneralTopology/UniformSpaceDefsNamespaced.lean/declarations/filter-hasbasis-uniformcontinuouson-iff.md) | 811 | `result-track:94b917ef1d9ebf404dbf9bb4f6e1157d70191cd11ae0343b4f110c5525e43c90` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00c23009cbc7a7491747e4122a198cb189156ce53735eae14ff3330a375a4095 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Defs/Variant07508ec56c9bb018f6da1dd08f0fa894aa8bf76eb80ba20aa422112b9249ffe9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
