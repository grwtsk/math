# Verification target: Algebra Support Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f182e29bba1dd35639d3ac2fb35c98f35283f392",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f182e29bba1dd35639d3ac2fb35c98f35283f392`.

Source path: `GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Indicator` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Unbundled.Abs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Defs` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Separation.Hausdorff` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/multsupport.md) | 53 | `declaration-track:f827a02617b7a7c969d6122fc3aadc682119990fa81e671b86123538da76eb78` |
| 2 | `theorem` | [subset_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/subset-multsupport.md) | 56 | `result-track:c28c274017cb372303347d730c04a0c7bccd2d4381588b687e72c14693f7b400` |
| 3 | `theorem` | [isClosed_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/isclosed-multsupport.md) | 60 | `result-track:82faf53dc132d5123ff020a691cac3e7f79d57c3c71bba3ee6400f55cca9696f` |
| 4 | `theorem` | [mulTSupport_eq_empty_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/multsupport-eq-empty-iff.md) | 64 | `result-track:939567249a9b518b030ff1193f83bb0c25c9b736b4fd3df1fd6c280d9131001e` |
| 5 | `theorem` | [image_eq_one_of_notMem_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/image-eq-one-of-notmem-multsupport.md) | 68 | `result-track:c250fab06b8adfc18049b1b15c8585258f96a687019f1331a7e50d13e215199a` |
| 6 | `theorem` | [range_subset_insert_image_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/range-subset-insert-image-multsupport.md) | 78 | `result-track:762fda2817b7f8ba0dc874c72f167affb150866766c7ea70e7d15f7e00741f52` |
| 7 | `theorem` | [range_eq_image_mulTSupport_or](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/range-eq-image-multsupport-or.md) | 84 | `result-track:34fb148c98aa819052ce5c924ab158f5b217eee12db42e11b3e97c360cbdcef6` |
| 8 | `theorem` | [tsupport_mul_subset_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/tsupport-mul-subset-left.md) | 88 | `result-track:8dd4be2439e4674c05761c46b971daf7bca1c6bdc06c5942f00bd047ec9972c2` |
| 9 | `theorem` | [tsupport_mul_subset_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/tsupport-mul-subset-right.md) | 92 | `result-track:f0a8a0d7c0ddda840ffe5dd005d789dbae2fcd4de81c01df1e5d4c791bd383e1` |
| 10 | `theorem` | [tsupport_smul_subset_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/tsupport-smul-subset-left.md) | 98 | `result-track:1eff40b9779ed9144b164d6c1dde40e67c9ef86770a4f47984bafc4afed694b9` |
| 11 | `theorem` | [tsupport_smul_subset_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/tsupport-smul-subset-right.md) | 102 | `result-track:a13701fff3ff626900efd0edc50b060451b08038a728c12dd6f5458b77a66774` |
| 12 | `theorem` | [mulTSupport_mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/multsupport-mul.md) | 107 | `result-track:b5ffe431cc3d2813068d776b560b34f72ac6811b572422fe6e7299c813034410` |
| 13 | `theorem` | [notMem_mulTSupport_iff_eventuallyEq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/notmem-multsupport-iff-eventuallyeq.md) | 120 | `result-track:f6a951c1cf86c28e26cb8ffd4c8596604369e7483328d97d75eb3faaaf64c823` |
| 14 | `theorem` | [continuous_of_mulTSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/continuous-of-multsupport.md) | 131 | `result-track:3269858a3a7a926e5c537582b83b3f460848b3b5c5c0baa5dcfb95f52397fa4f` |
| 15 | `lemma` | [ContinuousOn.continuous_of_mulTSupport_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/continuouson-continuous-of-multsupport-subset.md) | 137 | `result-track:fd0ef3e0f665d04133ae2a46f315defb380cb2726c568ef97b3a29a0d7b87bc7` |
| 16 | `def` | [HasCompactMulSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport.md) | 156 | `declaration-track:6a6c789b6e7bd1dec965a7b7bf6439c7167b369b7f8078b31098ad33ea101d75` |
| 17 | `theorem` | [hasCompactMulSupport_def](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-def.md) | 160 | `result-track:0250db4e5143d10185e323216f3d84728403dd2f4161cf87c7419354d9a227e1` |
| 18 | `theorem` | [exists_compact_iff_hasCompactMulSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/exists-compact-iff-hascompactmulsupport.md) | 164 | `result-track:b2c199025940da4925959c77b6c3b9667f23d8c588022d6db1a8d3b8a443ef4b` |
| 19 | `theorem` | [intro](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/intro.md) | 171 | `result-track:02463cbd79096334e099481909a3756687f08a49024b291957d5b5d766078640` |
| 20 | `theorem` | [intro'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/intro-source-edition-2.md) | 176 | `result-track:768b8ebe9a6abeb41533e30e577dea67141a18e15a7e55aa04615beb92f8acb4` |
| 21 | `theorem` | [of_mulSupport_subset_isCompact](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/of-mulsupport-subset-iscompact.md) | 184 | `result-track:fb8e2d9332cd9afa5bc2ecc46d9f8efb0b28c0f4165058dce7a930c8f122b6bf` |
| 22 | `theorem` | [isCompact](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/iscompact.md) | 189 | `result-track:4c9e6f697b9c840ecdbc1735234471727859d0ca7e2b8360a42e40e69f8c3542` |
| 23 | `theorem` | [Algebra Support Namespaced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-iff-eventuallyeq.md) | 193 | `result-track:67824cc80f74cf60c30716a2f65937288444aaa54711769f99e03faa3da83e1f` |
| 24 | `theorem` | [Algebra Support Namespaced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/iscompact-range-of-mulsupport-subset-iscompact.md) | 198 | `result-track:79ca3d12ba898d29a46fa633e571436543b247393f1bc4124dfe5484059ed69f` |
| 25 | `theorem` | [isCompact_range](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/iscompact-range.md) | 205 | `result-track:58f153db1fb62d3d510570cfd8fcba96e55088f81402fba650b8f6d0fd63547a` |
| 26 | `theorem` | [mono'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/mono-source-edition-2.md) | 210 | `result-track:52a06d1b73df2e276efbd4492efab919debcd7b0da7c43f54d270d2a7d4eef53` |
| 27 | `theorem` | [mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/mono.md) | 215 | `result-track:303bd21dd97d07e3fb35ba86f90f0fbf54541ba5904f687ec4bc0028f997fa69` |
| 28 | `theorem` | [comp_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/comp-left-source-edition-2.md) | 220 | `result-track:e6eecd99548c2e19aa41248ba87e01fae4e3e64c40a1074e980f2ce5833c6ba1` |
| 29 | `theorem` | [Algebra Support Namespaced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-comp-left.md) | 225 | `result-track:bae8a2bf6dd130a6bcf5279a8a596fae25c8a91facf95047c0f9e604fd82165c` |
| 30 | `theorem` | [comp_isClosedEmbedding](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/comp-isclosedembedding.md) | 230 | `result-track:50df4bad9e04c625235e4314e46a56337b767beb84e9b19fb3d7f187f7832a59` |
| 31 | `theorem` | [comp₂_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/comp-left.md) | 238 | `result-track:6efe60d3f912d0050b8bc89653afa03e1087f2e501a153baebe10633482f9da3` |
| 32 | `lemma` | [isCompact_preimage](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/iscompact-preimage.md) | 246 | `result-track:cfbc12408f319dfc5a381501bb7c4b984abb7afa6291218c934f37b03c6d1b44` |
| 33 | `theorem` | [mulTSupport_extend_one_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/multsupport-extend-one-subset.md) | 260 | `result-track:df83543d993ac633da5ea670a5480ea594721ed0d560ff7ddc0d1bc40dcd510b` |
| 34 | `theorem` | [extend_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/extend-one.md) | 266 | `result-track:a118ed0fd76e6e8915937811aabbb0cfab6a47e9e6b528e96222dcbc48e7a36e` |
| 35 | `theorem` | [mulTSupport_extend_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/multsupport-extend-one.md) | 271 | `result-track:4ebdbb226e1d3a0dc38562b422f2712593fd6b4691cd7f4e80f90bf46263db5f` |
| 36 | `theorem` | [continuous_extend_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/continuous-extend-one.md) | 280 | `result-track:7c99b4e021e532f861aa5fbef3154807deee3909c37c3dfee3a169cbc19172cc` |
| 37 | `theorem` | [is_one_at_infty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/is-one-at-infty.md) | 291 | `result-track:a3f03e590baa0abf1dbef31fd37d0d0a8c5ea61162aae1922530aa0d205e5f33` |
| 38 | `theorem` | [HasCompactMulSupport.of_compactSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-of-compactspace.md) | 309 | `result-track:c49e0e5a9092743b8b8d9b238ec832f18ecdb35130e66c7fb79397567fd31c03` |
| 39 | `theorem` | [HasCompactMulSupport.mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-mul.md) | 326 | `result-track:b24ba3f6ae11de63f750df9c3e01bdf17eb9054663a66ae1b33141ae7923ad0c` |
| 40 | `lemma` | [HasCompactMulSupport.one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-one.md) | 330 | `result-track:55a51c2cb6530fcf87072dfd21e6e2eaf7774aff3874a08226cb7ef3966ca6c0` |
| 41 | `lemma` | [HasCompactMulSupport.inv'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-inv.md) | 339 | `result-track:f2d2a8f80edec6f87f72ceb06f15247373f14b7d732799cfe7a94d49c4372eaf` |
| 42 | `theorem` | [HasCompactSupport.smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactsupport-smul-left.md) | 351 | `result-track:e51949ac057476c979b8c673b30cb273e2b9ad5ec7ba2fa657243c466fca30f6` |
| 43 | `theorem` | [HasCompactSupport.smul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactsupport-smul-right.md) | 362 | `result-track:12026ac1f9db83f69c22242bea87f27a6a19731bf764077f358eb9bb0785c31f` |
| 44 | `theorem` | [HasCompactSupport.mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactsupport-mul-right.md) | 373 | `result-track:7038cf46fd0c57f41e9e83bc379484e51a3061a029736411dd21cd28d2e03bce` |
| 45 | `theorem` | [HasCompactSupport.mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactsupport-mul-left.md) | 377 | `result-track:12cfb92ff14da327777fcd7c91a6416eb06732b520db9fdcd4d9dc2d60635db7` |
| 46 | `theorem` | [HasCompactSupport.abs](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactsupport-abs.md) | 387 | `result-track:1622c723d675b4acbcaad9fcbe41e93b29ebebb3a64b08ec53e5594e22fad905` |
| 47 | `theorem` | [LocallyFinite.exists_finset_nhds_mulSupport_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/locallyfinite-exists-finset-nhds-mulsupport-subset.md) | 406 | `result-track:18f27abbc0d795bcc4bf9a469859c2a10df1b394af0c8e37ed5e61a098dce09a` |
| 48 | `theorem` | [locallyFinite_mulSupport_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/locallyfinite-mulsupport-iff.md) | 445 | `result-track:eb2bc17cfa153cadf45a6903327659360434ec0626af628a164192cca1151f8d` |
| 49 | `theorem` | [LocallyFinite.smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/locallyfinite-smul-left.md) | 449 | `result-track:17d0ee36c1540a6ab71936c4c1d824cfd625ebc3f75170b82f5a320968b2a058` |
| 50 | `theorem` | [LocallyFinite.smul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/locallyfinite-smul-right.md) | 454 | `result-track:094a04e4f3a81ce4fd123987adccb0d97ace2b01eca71e6eb0c7c621b899ca97` |
| 51 | `theorem` | [HasCompactMulSupport.comp_homeomorph](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/AlgebraSupportNamespaced.lean/declarations/hascompactmulsupport-comp-homeomorph.md) | 466 | `result-track:4f62ee691712cf125574e43c2fdddabcad93582f5eb911025d939c43ec200225` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1e07ff54303ac5add86c3e0a14ec7adeaa7d9ebc723874be80ebbcc610ace8a7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Support/Variant80c927eca0857f90b2f0e0a0ed1838687ad02078220b2ba8dac76f412b6320d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
