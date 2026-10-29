# Verification target: Separation Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dcee2a7c744adc62f8ea5835dc6996e8ca91d983",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant86489508a81296d98c0d0f7001034b052786e98ad23c8256e52287528cd695c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/SeparationNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/SeparationNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dcee2a7c744adc62f8ea5835dc6996e8ca91d983`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant86489508a81296d98c0d0f7001034b052786e98ad23c8256e52287528cd695c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Separation/Variant86489508a81296d98c0d0f7001034b052786e98ad23c8256e52287528cd695c4.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/instance.md) | 124 | `declaration-track:de9c8458f51d80c54537b832ef358acd58acb7c6de9d4a3345efe54f22a36e09` |
| 2 | `theorem` | [UniformSpace.completelyNormalSpace_of_hasAntitoneBasis](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformspace-completelynormalspace-of-hasantitonebasis.md) | 132 | `result-track:f344df72ad5ec0b35a1ab239ae0c28f45e285d666949226b95c3663d7af5167a` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 162 | `declaration-track:f060cad039a19958ee4415179789024742211654131b01dc76d6882224ecea58` |
| 4 | `theorem` | [Filter.HasBasis.specializes_iff_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/filter-hasbasis-specializes-iff-uniformity.md) | 167 | `result-track:325878e781fab6687cbfbc352c51bc18bb693e761e8a062e5f64e329d1689be2` |
| 5 | `theorem` | [Filter.HasBasis.inseparable_iff_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/filter-hasbasis-inseparable-iff-uniformity.md) | 171 | `result-track:0c7778b306425246316e3488bc11a5afe4e0c6728e9779016866fea077fc1328` |
| 6 | `theorem` | [inseparable_iff_ker_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/inseparable-iff-ker-uniformity.md) | 175 | `result-track:42955a159e69c0e98b4d314e80d9685df7a68564cae5f18ba9516232565ae906` |
| 7 | `theorem` | [Inseparable.nhds_le_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/inseparable-nhds-le-uniformity.md) | 178 | `result-track:f0f8170548c133deac7236e1c2268c737a6c952f1c67133a37ad3be749ef97fd` |
| 8 | `theorem` | [inseparable_iff_clusterPt_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/inseparable-iff-clusterpt-uniformity.md) | 183 | `result-track:c467017d24dc429fe792c719f91804b41e57cdfae622860fcb680eaaf5cdc471` |
| 9 | `theorem` | [t0Space_iff_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/t0space-iff-uniformity-source-edition-2.md) | 189 | `result-track:c5e85bb02231d382c098a646d443184742a538049c083feb28d1f0948fcf8695` |
| 10 | `theorem` | [t0Space_iff_uniformity'](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/t0space-iff-uniformity.md) | 193 | `result-track:13cc91e2663951d582ba9d8b0a9765eb2fdcb97e69c2bcfca8351a3d42baa5ee` |
| 11 | `theorem` | [t0Space_iff_ker_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/t0space-iff-ker-uniformity.md) | 197 | `result-track:db65713ef8904e71ef8bf6a2354bcf5da8e0e80da428c672f9dd3c2c9abdf49c` |
| 12 | `theorem` | [eq_of_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/eq-of-uniformity.md) | 202 | `result-track:e5b4829df287c243d901ab964884abc1502fc9c02b691ae93736b1890bb5adc7` |
| 13 | `theorem` | [eq_of_uniformity_basis](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/eq-of-uniformity-basis.md) | 206 | `result-track:8a07cf2c71318fca4251381353fb83da1a44c0f3829c4279cb84830bbae7148a` |
| 14 | `theorem` | [eq_of_forall_symmetric](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/eq-of-forall-symmetric.md) | 211 | `result-track:701ba2c8972928e21c016b163ab25654b70f4fea5d57349dcbb022d4f6bbae2e` |
| 15 | `theorem` | [eq_of_clusterPt_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/eq-of-clusterpt-uniformity.md) | 215 | `result-track:04ec14eab9deb67e80d6498726493e8a38638a41f0095088f46d050afef61f84` |
| 16 | `theorem` | [Filter.Tendsto.inseparable_iff_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/filter-tendsto-inseparable-iff-uniformity.md) | 218 | `result-track:675a90dd780d80a43c63d990307169f14ee8df0d509e440846ff33ad203ece5d` |
| 17 | `theorem` | [isClosed_of_spaced_out](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/isclosed-of-spaced-out.md) | 225 | `result-track:a2b59e2fc59754eaff7dc598e5e2f25abaa7954b253dca0f96e2695f5974d614` |
| 18 | `theorem` | [isClosed_range_of_spaced_out](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/isclosed-range-of-spaced-out.md) | 241 | `result-track:1c8da73a5d79fd2f45a2e14a77e4e4414630421d401fe5db675b4ee3c503eaad` |
| 19 | `theorem` | [comap_map_mk_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/comap-map-mk-uniformity.md) | 253 | `result-track:280d7f15beba86dd0fa82d59f1169ae0198794758767b00bbba584ee997e996e` |
| 20 | `instance` | [instUniformSpace](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/instuniformspace.md) | 260 | `declaration-track:5428e87bc0bebff1734d096beb40521381e775a1e5a04a29f55248d389636bc7` |
| 21 | `theorem` | [uniformity_eq](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformity-eq.md) | 274 | `result-track:ff8f4b2279dae338b21b9ce0b2082f8646700887f9226da8927c457e5086673a` |
| 22 | `theorem` | [uniformContinuous_mk](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-mk.md) | 277 | `result-track:d316a9bf9a71c3cebde20c919306f592c468baf465fe58b552f0ef61c6d46c76` |
| 23 | `theorem` | [uniformContinuous_dom](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-dom.md) | 280 | `result-track:220fa8141ebef751e3859fbcefae798dc71ed2388b153c358243e849e896f25b` |
| 24 | `theorem` | [uniformContinuous_dom₂](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-dom-source-edition-2.md) | 284 | `result-track:2d285f92c5b8f2395316798358e2358dedb2b3b3d890cc004301811b951642b4` |
| 25 | `theorem` | [uniformContinuous_lift](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-lift-source-edition-2.md) | 290 | `result-track:995b37552915f6c7b335571f80cf8ef8899e322c804374fad62799dae9bfee90` |
| 26 | `theorem` | [uniformContinuous_uncurry_lift₂](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-uncurry-lift.md) | 294 | `result-track:644026448cdf29fde02de13250e74c0d6002c35d2f2525abc6113cc07749ffc3` |
| 27 | `theorem` | [comap_mk_uniformity](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/comap-mk-uniformity.md) | 299 | `result-track:a4706d85f844dd49988df537e9c6a14a60eb0fdb469060d79e0aa718f0fda18d` |
| 28 | `def` | [lift'](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/lift.md) | 306 | `declaration-track:a59a5829f35b08f1f3d8978719477af89db8eb31105d2bd0468db81ef2af1fe6` |
| 29 | `theorem` | [lift'_mk](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/lift-mk.md) | 310 | `result-track:80fa7fe13d5a11e1752a60c242058d231c5b5f288f97ab6fbe722520e40a91fa` |
| 30 | `theorem` | [uniformContinuous_lift'](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-lift.md) | 314 | `result-track:70977494acd4a6c8815e2573cd5eae719f99680867bea16748f10358f04d40d9` |
| 31 | `def` | [map](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/map.md) | 321 | `declaration-track:7a8da6a50b71d823f99df95683cb33ebcfe289c5f57d23e4714547cb92776f2d` |
| 32 | `theorem` | [map_mk](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/map-mk.md) | 323 | `result-track:cc27ea8dfd56f10355b420f836e9f730ec5843d257b12aa436eed49851337dec` |
| 33 | `theorem` | [uniformContinuous_map](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous-map.md) | 327 | `result-track:a638af5e13e073e66731ea657acc719802e565b78776118b0fcf56586d5a9709` |
| 34 | `theorem` | [map_unique](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/map-unique.md) | 331 | `result-track:b1ce59c46650edf4ac1b0206ac718557141196e9d3b377178a6af33b0d193768` |
| 35 | `theorem` | [map_id](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/map-id.md) | 339 | `result-track:c42836e06f3a589fc5e80eaa3710bf536fac36b7ccda3890c7dc60ba631a1cf6` |
| 36 | `theorem` | [map_comp](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/map-comp.md) | 341 | `result-track:0bda6c9d0a9f7f1c22c79ce1a1d7ff039bcdfe1543d4b1914832ff0b3eb0bd3e` |
| 37 | `theorem` | [of_uniformity_eq_top](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/of-uniformity-eq-top.md) | 351 | `result-track:2b7922c4f7878cf381881335fd392d47e85774c3a372c93d88888bb1ad2d4e80` |
| 38 | `lemma` | [eq_top_uniformSpace](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/eq-top-uniformspace.md) | 354 | `result-track:4f19c899077e93e7dfe38a0904b4b284561fe31f2a19f3809041abf4c8c35c13` |
| 39 | `lemma` | [eq_top_iff_indiscrete](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/eq-top-iff-indiscrete.md) | 361 | `result-track:fe1390a195874148ab310bbded7a914ef78438ad2d677f00bd95e0845c32d97f` |
| 40 | `lemma` | [uniformContinuous](../../../../GeneralTopology/SeparationNamespacedPublic.lean/declarations/uniformcontinuous.md) | 366 | `result-track:c9a8bc864546f8067462bfb6b67edb0963bd2e7ecceaebccee98c2fa3accb8c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5b3e0efced7622a78184972603624eb2bdad9874765983e1d53c1a6f9eb1115a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Separation/Variant86489508a81296d98c0d0f7001034b052786e98ad23c8256e52287528cd695c4.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Separation/Variant86489508a81296d98c0d0f7001034b052786e98ad23c8256e52287528cd695c4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
