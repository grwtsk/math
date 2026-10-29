# Verification target: Cauchy Namespaced Totally Bounded Subset

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d844b674942d472920dc2e03d2c80465cc96dfd",
  "lexical_observation_count": 102,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/index.md) · [Full source](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d844b674942d472920dc2e03d2c80465cc96dfd`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Constructions` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Cauchy](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy.md) | 37 | `declaration-track:b739223da74bebde824c0538895bf03227dc1a1c7bf46c2ae9388d0084ff39d9` |
| 2 | `def` | [IsComplete](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscomplete.md) | 43 | `declaration-track:2427feeb3ad86afc7c11e90c81948c4a4d1d303efb36fea772d40ab78ebd953d` |
| 3 | `theorem` | [Filter.HasBasis.cauchy_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-hasbasis-cauchy-iff.md) | 47 | `result-track:72f4e05316786e45b1c81bb62d0a53627fc47a1205d3f53f89057b9a7efa914a` |
| 4 | `theorem` | [cauchy_iff'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-iff.md) | 55 | `result-track:1f9eaf174d123b216f39fea5ffe3015755e11b94b291094b988258536ece4976` |
| 5 | `theorem` | [cauchy_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-iff-source-edition-2.md) | 60 | `result-track:b4bc9365d6f1cb5b87799b86da139b18bfb356a1b6344bfb0eb5c59e0e3f4ae9` |
| 6 | `lemma` | [cauchy_iff_le](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-iff-le.md) | 65 | `result-track:09844d579197bc6542905bef74b8aa243726a6724effb4502546545bec71cf8b` |
| 7 | `theorem` | [Cauchy.ultrafilter_of](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-ultrafilter-of.md) | 69 | `result-track:4b8e6cc518b3d0290f83cabcb9fec8d476fe6027c4d3eb6218b1743b2b44f3fe` |
| 8 | `theorem` | [cauchy_map_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-map-iff.md) | 76 | `result-track:029443b06f44af6043a56c8c1a019696f6885a7df7467a4762cfaa2f830b1aa2` |
| 9 | `theorem` | [cauchy_map_iff'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-map-iff-source-edition-2.md) | 81 | `result-track:ef43a9c6f84e5493acfcc682ab4459644509049ac03a59761850214ed20a38c5` |
| 10 | `theorem` | [Cauchy.mono](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-mono.md) | 86 | `result-track:b2fbbaad457faa83211d2e384670bfc1b3ed273e68bc0deb4c53bc0144204b87` |
| 11 | `theorem` | [Cauchy.mono'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-mono-source-edition-2.md) | 90 | `result-track:e388fe82dd2bfb689ee23bee36632b51d442198abc6fe412cc53194470fe9058` |
| 12 | `theorem` | [cauchy_nhds](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-nhds.md) | 94 | `result-track:dacbcefbc150d2fa95d4db22d2b2753216799441f451b2341d0c497c0ee796d6` |
| 13 | `theorem` | [cauchy_pure](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-pure.md) | 98 | `result-track:98a69f4f7f92001cc27997de0d516ac76c9061d9e935a34d0b692827c4845640` |
| 14 | `theorem` | [Filter.Tendsto.cauchy_map](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-tendsto-cauchy-map.md) | 102 | `result-track:f43965b1a213abc058790e322af587c8d1618251d09d9669d5e0e7a11ebc3c2f` |
| 15 | `lemma` | [Cauchy.mono_uniformSpace](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-mono-uniformspace.md) | 107 | `result-track:8431a97389ebe379bb1f0c2b48737d0f7652d20211786ab5d799926f967e1861` |
| 16 | `lemma` | [cauchy_inf_uniformSpace](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-inf-uniformspace.md) | 111 | `result-track:64070443837ab0025ea3f1fc30a9972f36e628dff6bab4ac30980d0d1f20a990` |
| 17 | `lemma` | [cauchy_iInf_uniformSpace](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-iinf-uniformspace-source-edition-2.md) | 117 | `result-track:bbef12e9402a3562e3b166a87efd5add861678edcf0881c29d7e0c47b3f837fb` |
| 18 | `lemma` | [cauchy_iInf_uniformSpace'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-iinf-uniformspace.md) | 123 | `result-track:abc2c70adb7f3230e6ec81388e9f5cacefbcc52264f1741984efcdba47ba70bb` |
| 19 | `lemma` | [cauchy_comap_uniformSpace](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-comap-uniformspace.md) | 128 | `result-track:ad9e73d782d2438245e8f276fbe425663044a7b32ae134f45a8edc7e9307e435` |
| 20 | `lemma` | [cauchy_prod_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-prod-iff.md) | 133 | `result-track:62a278c06b616d137ce7757df7d640d2d7c8519afbc8078bcd650abb52ba4691` |
| 21 | `theorem` | [Cauchy.prod](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-prod.md) | 137 | `result-track:1587d208991b5433420944ebfa3e453d864f70cca64fe97b986316d51912ed7a` |
| 22 | `theorem` | [le_nhds_of_cauchy_adhp_aux](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/le-nhds-of-cauchy-adhp-aux.md) | 147 | `result-track:cf2490ac97d32778514db798cb86a7cb75b9cb99dd3246d652f67788a9eef4a7` |
| 23 | `theorem` | [le_nhds_of_cauchy_adhp](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/le-nhds-of-cauchy-adhp.md) | 162 | `result-track:d4e9dd0425c485d16daaf2196fa854ae25cbc276b840fa8c281edeecd62fe333` |
| 24 | `theorem` | [le_nhds_iff_adhp_of_cauchy](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/le-nhds-iff-adhp-of-cauchy.md) | 171 | `result-track:951704c02864934787cfacedd488de8fd76a75d24c178353d7bab2313084c2a1` |
| 25 | `theorem` | [Cauchy.map](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-map.md) | 176 | `result-track:138667408e944d8ffe0c9dd459710a480462af0a9520e381994f70e01d80a5aa` |
| 26 | `theorem` | [Cauchy.comap](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-comap-source-edition-2.md) | 185 | `result-track:e2bc1e12cf8941ef561eca69e0593893994c0eb53375254108b647986cbf6e4b` |
| 27 | `theorem` | [Cauchy.comap'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-comap.md) | 195 | `result-track:0a5a5f8fca37b2e822db6138f2a480a80146de1d02433a233958bff79631fb27` |
| 28 | `def` | [CauchySeq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq.md) | 204 | `declaration-track:ceaad87e7aafc485c96cdb7bc12bd74fa9cbe7887d2b96dc29180380b8fc4736` |
| 29 | `theorem` | [CauchySeq.tendsto_uniformity](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-tendsto-uniformity.md) | 208 | `result-track:c99625029706d02a54ab6117cbb0eaf8806f20ca3d2f3f1f936390f48dff0c39` |
| 30 | `theorem` | [CauchySeq.nonempty](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-nonempty.md) | 213 | `result-track:5df48d4e991e9d7d4a222f88333eb47f1d06916f28250b3d0f3640a94e4dde81` |
| 31 | `theorem` | [CauchySeq.mem_entourage](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-mem-entourage.md) | 217 | `result-track:82175334b6122281111d3050fd74e686dc428c03f2ad79230ef07a56954c4f26` |
| 32 | `theorem` | [Filter.Tendsto.cauchySeq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-tendsto-cauchyseq.md) | 224 | `result-track:4cfa002fa20fa956ada62c88107d96182933d8313e3f80a92ca3c665b57e7c8c` |
| 33 | `theorem` | [cauchySeq_const](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-const.md) | 229 | `result-track:06d3e7db5da6aaf6818afb1a6de2c547c1b1d8ed8c3453a9bfa26cf0f757c7ae` |
| 34 | `theorem` | [cauchySeq_iff_tendsto](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-iff-tendsto.md) | 233 | `result-track:ec1e53bdf1f9a3470c074d354aa3933b0bc2b06bcec027fc0575d7391d4a5fbb` |
| 35 | `theorem` | [CauchySeq.comp_tendsto](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-comp-tendsto.md) | 238 | `result-track:8f256ffdc48f79b1ab1b1c265cfa0f47ce79fadcc22492a09e4a9ddaf4d6943d` |
| 36 | `theorem` | [CauchySeq.comp_injective](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-comp-injective.md) | 243 | `result-track:9074c48e198230bb97b3615df06347eced359872dae1c5af5e02adc7760c2368` |
| 37 | `theorem` | [Function.Bijective.cauchySeq_comp_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/function-bijective-cauchyseq-comp-iff.md) | 248 | `result-track:8d1d1e3d43d270f5d5119a446bf4357a852e1393ca14669ecd7a615beddd96ae` |
| 38 | `theorem` | [CauchySeq.subseq_subseq_mem](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-subseq-subseq-mem.md) | 255 | `result-track:b8a2317c4e6c00822014c759aafab1241ca53374e066e8998b9994c939be4e2b` |
| 39 | `theorem` | [cauchySeq_iff'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-iff-source-edition-2.md) | 263 | `result-track:e7ee0d21d1b56a4225473104407199f344d516694ff45f29e89a7c20aec537a0` |
| 40 | `theorem` | [cauchySeq_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-iff.md) | 268 | `result-track:26409d14fb4eab48e40d5f3f299ff92c4cc61cbe1a18930f787decb985696f5f` |
| 41 | `theorem` | [CauchySeq.prod_map](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-prod-map.md) | 273 | `result-track:778da548490f6fea80050933cc1920b4c01164c50dda5cc2fdb5481edbbefe7f` |
| 42 | `theorem` | [CauchySeq.prod](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-prod.md) | 278 | `result-track:a078fab3540cba24ab9e2c92b9af17d0b2ef42f191dad4781937be15799bcea4` |
| 43 | `theorem` | [CauchySeq.eventually_eventually](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-eventually-eventually.md) | 284 | `result-track:23ce8a2b7bd919d17895ae5d1f8f20553ad3efee305278c310474c211f88ec14` |
| 44 | `theorem` | [UniformContinuous.comp_cauchySeq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/uniformcontinuous-comp-cauchyseq.md) | 289 | `result-track:033d166e47381ad94448f05ca2b3932ccb40509a920deceeaa3851b5ef58f954` |
| 45 | `theorem` | [CauchySeq.subseq_mem](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-subseq-mem.md) | 294 | `result-track:b846e040cb3d499694a3d65257da1c9af37a56fee35ac665875a3a00bc122a6f` |
| 46 | `theorem` | [Filter.Tendsto.subseq_mem_entourage](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-tendsto-subseq-mem-entourage.md) | 305 | `result-track:7033f4635425c8d94910fce626bd6f5be1959427ebd07fdf4a052fa31382d31e` |
| 47 | `theorem` | [tendsto_nhds_of_cauchySeq_of_subseq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/tendsto-nhds-of-cauchyseq-of-subseq.md) | 315 | `result-track:f059cd4d1106200614d48f2e453bb12bca43d028d298082c2081bf69879cb86e` |
| 48 | `theorem` | [Filter.HasBasis.cauchySeq_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-hasbasis-cauchyseq-iff-source-edition-2.md) | 321 | `result-track:ccf599568c14e74a3d51456158db914dbbc5c2569d542ddbcb6dd5036da664f7` |
| 49 | `theorem` | [Filter.HasBasis.cauchySeq_iff'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-hasbasis-cauchyseq-iff.md) | 330 | `result-track:ba10dad1bf0bd7a1585b791c36ab83d9a7705cf23d89a3469b2d57c656025a8b` |
| 50 | `theorem` | [cauchySeq_of_controlled](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-of-controlled.md) | 341 | `result-track:8d4c1cedf0a93d4e2f4d64a06f743f598e3f8843255d89911b536b2f2444488d` |
| 51 | `theorem` | [isComplete_iff_clusterPt](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscomplete-iff-clusterpt.md) | 355 | `result-track:824bad339376b3986efed3d5f11954d388415e2c3b3cf871b398921cd33ef6c1` |
| 52 | `theorem` | [isComplete_iff_ultrafilter](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscomplete-iff-ultrafilter.md) | 361 | `result-track:9a58173072f46b82e33cd8e117e4197de2e4342a2336ed730d4f8185a4d02a7e` |
| 53 | `theorem` | [isComplete_iff_ultrafilter'](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscomplete-iff-ultrafilter-source-edition-2.md) | 369 | `result-track:d1dde725bd1e0e3d71a7864ff6727013a3a5abb5afbe79279eadfe715a2a887e` |
| 54 | `theorem` | [IsComplete.union](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscomplete-union.md) | 374 | `result-track:a621c94d623256cb0e2acfabad4c38fdadf71e69a6fc320bc4918a8efbdbe5e9` |
| 55 | `theorem` | [isComplete_iUnion_separated](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscomplete-iunion-separated.md) | 382 | `result-track:409ea91039644d668896d5504834756c5c7f0dd32b2554369ccbf618be9de3b4` |
| 56 | `class` | [CompleteSpace](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/completespace.md) | 405 | `declaration-track:faab91a6fd1d5609e410f6651fe3712e132250e29b6b71f717d2f39d55e2ab8a` |
| 57 | `theorem` | [complete_univ](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/complete-univ.md) | 410 | `result-track:07d0f03160ddd7a06e85e8b8ffeefa28f240c2111155106f5300c40d57eb9386` |
| 58 | `instance` | [CompleteSpace.prod](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/completespace-prod.md) | 416 | `declaration-track:24b88527e9b484b4853c4ccdda8baebbe5d99e685dd14d6c04514b98f854a21f` |
| 59 | `instance` | [CompleteSpace.mulOpposite](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/completespace-mulopposite.md) | 425 | `declaration-track:e8e9be6028d9c80b469b6ed41d3f2ec979ca11696ffe86f1a1afa747f8e0eb68` |
| 60 | `theorem` | [completeSpace_of_isComplete_univ](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/completespace-of-iscomplete-univ.md) | 434 | `result-track:3214982df53e1972b4c02d04efd4ccb0ff542e42bfe3b53e01519cf9afe8c4e7` |
| 61 | `theorem` | [completeSpace_iff_isComplete_univ](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/completespace-iff-iscomplete-univ.md) | 438 | `result-track:92b42918e1667c5bb2954533b61b905e8292d6845ab0de042f4845d461aa1e23` |
| 62 | `theorem` | [completeSpace_iff_ultrafilter](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/completespace-iff-ultrafilter.md) | 442 | `result-track:5e8beb6ac359a0fa9b2dcc27662e278680f44ce63b61d1f92385bddb2ac5a43b` |
| 63 | `theorem` | [cauchy_iff_exists_le_nhds](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-iff-exists-le-nhds.md) | 447 | `result-track:41af57224f066194195f5cf71dfc2bf47fc638f4966ef2c5827950a8eae139c4` |
| 64 | `theorem` | [cauchy_map_iff_exists_tendsto](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-map-iff-exists-tendsto.md) | 452 | `result-track:4247d19f30bbb219631959b0f83b46baa75831caf39b76f014aae884a8328a52` |
| 65 | `theorem` | [cauchySeq_tendsto_of_complete](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-tendsto-of-complete.md) | 458 | `result-track:a59dad0b57e1c894db19e81cc5333c68d617d7a4c01db58847832b8250f93ae5` |
| 66 | `theorem` | [cauchySeq_tendsto_of_isComplete](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-tendsto-of-iscomplete.md) | 464 | `result-track:a1ca8fd772bcab0660f84aae21d6797607aac657a36000ac0a095f99840a47d7` |
| 67 | `theorem` | [Cauchy.le_nhds_lim](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchy-le-nhds-lim.md) | 470 | `result-track:b1c018bf1cfe43546b3b311dc0a2dcb5ef89d61cd7408e9e099ec265814f983f` |
| 68 | `theorem` | [CauchySeq.tendsto_limUnder](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-tendsto-limunder.md) | 476 | `result-track:eb8d854d48d88e375c6531130c9df557c6c4ce6dccef83956171ecff0c83451e` |
| 69 | `theorem` | [IsClosed.isComplete](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/isclosed-iscomplete.md) | 481 | `result-track:1a374895bb48d5daf230720369808cd489501b94fc90b6da7f8b702534cb0ad4` |
| 70 | `def` | [TotallyBounded](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded.md) | 489 | `declaration-track:f5f5ef205c4caf402673f5aee73012afbf692f91cca714efdbd3a34166c73078` |
| 71 | `theorem` | [TotallyBounded.exists_subset](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-exists-subset.md) | 493 | `result-track:de6bdabd26cd3c1986f086ecb82aaa6671259bc2d088a29ee6b9bdbdd4c21def` |
| 72 | `theorem` | [totallyBounded_iff_subset](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-iff-subset.md) | 510 | `result-track:5402a46969e9f14b59c0f60e34c8483b0d0d6f3c04c878057e174945df51f43f` |
| 73 | `theorem` | [Filter.HasBasis.totallyBounded_iff](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/filter-hasbasis-totallybounded-iff.md) | 518 | `result-track:dec1f0d0ed423be7770369e8c71ae6af89bb126564216bc2f85eccf427994db8` |
| 74 | `theorem` | [totallyBounded_of_forall_symm](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-of-forall-symm.md) | 525 | `result-track:522522fbc771761c501206a967c7a12c0c6f3d759a299f947c19fa8736f69d71` |
| 75 | `theorem` | [totallyBounded_subset](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-subset.md) | 532 | `result-track:b279fb3ebf678b27a4d5864ffda5dbe18a1e1e532c3df02e891b46868cc2e2cc` |
| 76 | `theorem` | [totallyBounded_empty](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-empty.md) | 538 | `result-track:20cf0a814bb8814b34660ed5241313e1a0d4a1a8e3aecfb61150cb348e8368a2` |
| 77 | `theorem` | [TotallyBounded.closure](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-closure.md) | 543 | `result-track:cf7d12585de4481f62356511814373a8501d3348201f136dccc342e3322e9706` |
| 78 | `theorem` | [TotallyBounded.image](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-image.md) | 552 | `result-track:f161e6a8bc2776b507e81d88a7c982f39c38c29580642f90c89dd1b1e458d94f` |
| 79 | `theorem` | [Ultrafilter.cauchy_of_totallyBounded](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/ultrafilter-cauchy-of-totallybounded.md) | 563 | `result-track:fddf3182052703062284af5418b7e0152a4f336cff1e5fc585b5e74c86e5d0d0` |
| 80 | `theorem` | [totallyBounded_iff_filter](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-iff-filter.md) | 576 | `result-track:c02a9270da26420c28e6f4c410e8b4e28179308decaac884cf0b91e16aaa35d4` |
| 81 | `theorem` | [totallyBounded_iff_ultrafilter](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/totallybounded-iff-ultrafilter.md) | 602 | `result-track:ec32db086374fcf9aac991bd3970f43b043609e1f58af16deb9056f81d5ab590` |
| 82 | `theorem` | [isCompact_iff_totallyBounded_isComplete](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscompact-iff-totallybounded-iscomplete.md) | 609 | `result-track:413270ceae0a24b1ae13c3aebe778220bacad40d76a09135c40cc921b018ad9d` |
| 83 | `theorem` | [IsCompact.totallyBounded](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscompact-totallybounded.md) | 623 | `result-track:9703141509a412806dd778740359272f4047616bb8f61c44bf55e1e1f09aadf1` |
| 84 | `theorem` | [IsCompact.isComplete](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscompact-iscomplete.md) | 627 | `result-track:dff514c9892f88e8562de93820a91dc8faea5181a77833cbef816dd9642fff85` |
| 85 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/instance.md) | 632 | `declaration-track:743da42605624e82d6955e072130a6d4cf2add733548611d250c8482552eb88a` |
| 86 | `theorem` | [isCompact_of_totallyBounded_isClosed](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/iscompact-of-totallybounded-isclosed.md) | 637 | `result-track:fbdf9fa982ac8d0932aa04cebf18b4e5e17f2af8bcec812fa3c1c376b88c05c6` |
| 87 | `theorem` | [CauchySeq.totallyBounded_range](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/cauchyseq-totallybounded-range.md) | 643 | `result-track:2c65c15791df73f7a4c25fe92fabd8ceba4aead291f2d54b553b51858c938680` |
| 88 | `def` | [setSeqAux](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/setseqaux.md) | 679 | `declaration-track:8be785867542c63be396477e86523b2f9bba68cc5ca8574fabba52e98fb1a2c5` |
| 89 | `def` | [setSeq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/setseq.md) | 686 | `declaration-track:4ac04223c420d81a21a4d6c71dd40438e087747568b8094550ceec660dbb4325` |
| 90 | `theorem` | [setSeq_mem](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/setseq-mem.md) | 690 | `result-track:1b33306e6480e5da8bb50604cd4efcc9b605dab3fcac3afa9747581fd19d8173` |
| 91 | `theorem` | [setSeq_mono](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/setseq-mono.md) | 694 | `result-track:653f08bba354ce06075c26b4691dc64f674104088974a2cbb1a2f479aa3178f4` |
| 92 | `theorem` | [setSeq_sub_aux](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/setseq-sub-aux.md) | 698 | `result-track:ad682f89323e559b67bca13c8670154dce4ff89735111d5905951917bd016719` |
| 93 | `theorem` | [setSeq_prod_subset](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/setseq-prod-subset.md) | 702 | `result-track:829039a169ebfc771aa34f9a7b77498b6cab92d64d39cffef4bca0681a898b35` |
| 94 | `def` | [seq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/seq.md) | 712 | `declaration-track:9dcbe436dacf1793642059a02e59ac7be718e46970cddf4acb7841f62b16e000` |
| 95 | `theorem` | [seq_mem](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/seq-mem.md) | 716 | `result-track:f1057111377e186db2a878886a9ba66ed30f43bfe2455f4f93531acd194f1ceb` |
| 96 | `theorem` | [seq_pair_mem](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/seq-pair-mem.md) | 720 | `result-track:833f87a117704ab67ce412a76a4c30eb2e48a0469b5da459669e92773f990956` |
| 97 | `theorem` | [seq_is_cauchySeq](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/seq-is-cauchyseq.md) | 725 | `result-track:3bc8ce333d48ba912c8e416f582b9af7068b2d8f79cbe1356b7450985a4907bd` |
| 98 | `theorem` | [le_nhds_of_seq_tendsto_nhds](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/le-nhds-of-seq-tendsto-nhds.md) | 730 | `result-track:5200e32f181bc8a0466431302f9fc5b6003dc60d7a6ba1917ac25fc00b2be65d` |
| 99 | `theorem` | [complete_of_convergent_controlled_sequences](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/complete-of-convergent-controlled-sequences.md) | 755 | `result-track:1e51868fffaffcfea9f55c94dd0598762c4ec8e88e40678dee4a460d504c0fe5` |
| 100 | `theorem` | [complete_of_cauchySeq_tendsto](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/complete-of-cauchyseq-tendsto.md) | 769 | `result-track:c18f2eede3e3f615517bbb973131f5681af2d30ab18f06b7d2d959ee430c3c76` |
| 101 | `instance` | [(anonymous)](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/instance-source-edition-2.md) | 779 | `declaration-track:793340e166e397a6f87bcbd5306ea96423888046e6f66d0814d432f311576278` |
| 102 | `theorem` | [secondCountable_of_separable](../../../../GeneralTopology/CauchyNamespacedTotallyBoundedSubset.lean/declarations/secondcountable-of-separable.md) | 788 | `result-track:4056b8d8959a3f94ad0a3da4a774a816003206b7878e95149e31a1617f5e6fd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f0935a9efe67d79090c28dcb19539293b92a87af512d68f705c9877267decb8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Cauchy/Variantbe9d15758ccfcfd22121683754cb627db44b8ead6ae7e9b467a9f83159744960.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
