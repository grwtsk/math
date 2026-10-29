# Verification target: Tilde Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b414ff838619701683daafb0d6146a5314aebc8",
  "lexical_observation_count": 73,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b414ff838619701683daafb0d6146a5314aebc8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupWithZero.Action.Regular` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [modulesSpecToSheaf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/modulesspectosheaf.md) | 52 | `declaration-track:2a5702e3bb31fa2af14eaeb4328069f4c84d25aa9bde969bcbace51922a5580e` |
| 2 | `def` | [moduleSpecΓFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/modulespec-functor.md) | 60 | `declaration-track:8f205223ad9926425f3bfe072c1a2dd70f931c4add967b6d1e5c564b3f1a34c5` |
| 3 | `def` | [SpecModulesToSheafFullyFaithful](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/specmodulestosheaffullyfaithful.md) | 66 | `declaration-track:2b15eca0c7d0a4009b7180165ed7825e32c26b6091b20842727d8181272032d3` |
| 4 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 94 | `declaration-track:f9c8f4a743502e6800b32a43b5372f706f688ab8e1bda23b4206060ef4d4f462` |
| 5 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 96 | `declaration-track:d6a8d0e7424c71016a53f3becfc86c594aa344fa744183bfdc61128bcbbaf9f4` |
| 6 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 102 | `declaration-track:f8a85c0ba22367de79e7ccf04fe771faf3eb39f2ae0f615886f98efa4de40101` |
| 7 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance.md) | 105 | `declaration-track:24744d5a3c03fe3dc0c58a5cc347210bc18195c47b6a5b4f9100ffcbcb5e912d` |
| 8 | `lemma` | [smul_Spec_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/smul-spec-def.md) | 108 | `result-track:57071c715197437561f0ece15437152b96eb05c2633f2e365114275d0385e416` |
| 9 | `lemma` | [map_smul_Spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/map-smul-spec.md) | 113 | `result-track:42ca83030551e8d98a5321e6502d7a6b7583137f3ff3e51db6eeec01352b83ec` |
| 10 | `lemma` | [isUnit_algebraMap_end_of_le_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isunit-algebramap-end-of-le-basicopen.md) | 118 | `result-track:9ed56da5b53afd0100e54bf315eba990ca896bedd0770e5703f8ce1cfa10bdc8` |
| 11 | `lemma` | [isSMulRegular_of_le_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/issmulregular-of-le-basicopen.md) | 128 | `result-track:ada76d35edd1f6b33239d416e7931eddbca7a67c9c97250a0489eb7cd96eda8b` |
| 12 | `lemma` | [restrictAppIso_smul_Spec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/restrictappiso-smul-spec.md) | 137 | `result-track:41346f71a4b5a44a9125b6b05da2be4caa575fcd03db8065063478bc7ffeb0e5` |
| 13 | `def` | [tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde.md) | 160 | `declaration-track:a5a3f7d3571b319d0cea1274f9192737076c76b6da76c4dc3eb3184d1f864925` |
| 14 | `def` | [modulesSpecToSheafIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/modulesspectosheafiso.md) | 171 | `declaration-track:576fe51b8d87fafdbbbc92a809182a229f96bea606464cd1c39aa94af62dee58` |
| 15 | `def` | [toOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/toopen.md) | 180 | `declaration-track:422220816ea0ab2de31016b50686bba45aa312aecd7b1b69ed87e83e8a2b4054` |
| 16 | `theorem` | [toOpen_res](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/toopen-res.md) | 184 | `result-track:2a1ebd4f3d8d9f8abaa95e577ecb62ff85d23532416c91470cc6aa26ef0cf3fa` |
| 17 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 188 | `declaration-track:54c1f49fb6a66afc868edcf3e9266d296d5d29579b13fab58705bc6b6a568c1d` |
| 18 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 193 | `declaration-track:3d52afa46eff66ce0c3cc1622ad51ff1013458a63d075119f97dbc9c5baae6fa` |
| 19 | `def` | [toStalk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tostalk.md) | 200 | `declaration-track:5334cd8a3fb98f7db14d46f78041202fbbb4995e2ac72d44fbebfa3b2f3503aa` |
| 20 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 204 | `declaration-track:654e63d2d26daa83b673e4aae6ae9c16ee4a43151535d914245d5bf447b8b379` |
| 21 | `def` | [map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/map.md) | 210 | `declaration-track:9f35214790a2e398bf9bd45084a9bcecf86671ecce1d712c9dadf294efd8fc3f` |
| 22 | `lemma` | [map_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/map-id.md) | 216 | `result-track:1455299fbf9b0b284ec09c3e76b5ad8b2dbc7cd44737b833c6e0a4e0559dbcb1` |
| 23 | `lemma` | [map_comp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/map-comp.md) | 221 | `result-track:4c0f0950618e6d69f8ad55292021cb6600aecd42868ed449699718f7a44884a9` |
| 24 | `lemma` | [toOpen_map_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/toopen-map-app.md) | 231 | `result-track:a406cc0b3a80c9ebfdd3e0c3987a6d83481da35cecf460eb3a4d6b2450b0a88f` |
| 25 | `def` | [functor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/functor.md) | 241 | `declaration-track:db1451cd63011deb86d7dd98b93915f380fe3eae7cb02bcb78059b3df277019f` |
| 26 | `instance` | [isIso_toOpen_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isiso-toopen-top.md) | 246 | `declaration-track:73a1f5607c6f37de805f4d95838c7dbe28b3e546984e07a44a83293ea6e0b35e` |
| 27 | `def` | [isoTop](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isotop.md) | 252 | `declaration-track:39bafbe0de5f7f5110cddd6d36ecdf6cec233a036dec3e8b2849c32df29a0c3c` |
| 28 | `def` | [Scheme.Modules.fromTildeΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-fromtilde.md) | 264 | `declaration-track:343586b7e1f6c3ab7c32eaea776fa25816dcd099d55cad661efb714a4134efd7` |
| 29 | `lemma` | [Scheme.Modules.toOpen_fromTildeΓ_app](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-toopen-fromtilde-app.md) | 299 | `result-track:e1a9053b80a63f15cf0e0b7af28fccec8d1a59ec0713645431e9493b6ab47177` |
| 30 | `def` | [Scheme.Modules.fromTildeΓNatTrans](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-fromtilde-nattrans.md) | 318 | `declaration-track:53b2c47eea6e048283b580df7ad2320048f41594355127e3a6a9d11284d9ad81` |
| 31 | `def` | [tilde.toTildeΓNatIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-totilde-natiso.md) | 343 | `declaration-track:56ec11f5eddbef199f51fc41348e1b2f30f71714291a0ccacc39126431b82e7d` |
| 32 | `def` | [tilde.adjunction](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-adjunction.md) | 350 | `declaration-track:dedf6095f43f41def0ce9502fe5a603b1ae18cd701c0ac5112934cafc576e71b` |
| 33 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 378 | `declaration-track:c6586f771400f2178748a4d9f97697222ea14f8b2a3035834dc2b26f2d63b74a` |
| 34 | `def` | [tilde.fullyFaithfulFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-fullyfaithfulfunctor.md) | 383 | `declaration-track:9b1dca785c9673319c1edfd13e0d5fc5f084630eebf6d0da3b57734f13f84467` |
| 35 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 386 | `declaration-track:abc06be32c436a52053155c41a581ce2b6fa27b5f2328e138d36be807ceda91f` |
| 36 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 387 | `declaration-track:99d733bf890c3841ab68d42ea9751b99507a1eca84df5497b90b331a75759cfb` |
| 37 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 388 | `declaration-track:6997beb0ca9e6bf661310e3706d0784a63efc42bcb590afe42d2cd4fac88fc45` |
| 38 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 389 | `declaration-track:8f3b3562ccda44159571c617ba43012221bb94badb2d82f9d426ee95d70833d4` |
| 39 | `lemma` | [tilde.map_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-map-zero.md) | 397 | `result-track:18aca47acac82e0297f711708656bd116c17d1a0ea2397b0d250bf5ab9c979fe` |
| 40 | `lemma` | [tilde.map_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-map-add.md) | 400 | `result-track:fbea52478c8aa7540e66240f68cb06a80241cd383d00a90e8a5210c5a7149898` |
| 41 | `lemma` | [tilde.map_sub](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-map-sub.md) | 403 | `result-track:adb5b6d2559422b90728d87485568f632626049a76c09b27e1f340c2fcc34698` |
| 42 | `lemma` | [tilde.map_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tilde-map-neg.md) | 406 | `result-track:b2313ff56fbd8355819dbbd077fb1612255dc3afba10bae3c4d3f2f2b1edf811` |
| 43 | `lemma` | [isIso_fromTildeΓ_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isiso-fromtilde-iff.md) | 411 | `result-track:747082562de78e1badca19a1bcea8f051f96f22a42c3f8c6637092d268ffe248` |
| 44 | `def` | [tildeSelf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tildeself.md) | 421 | `declaration-track:5a8fab6ba9413504928148156e3f8bcc3a3c1f7c7d5ae7e8658486707654b1ae` |
| 45 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 423 | `declaration-track:f3c3be4ae04c988add7510b50eb8bda5b5e10730ffa136e287646bd00925b362` |
| 46 | `def` | [tildeFinsupp](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tildefinsupp.md) | 428 | `declaration-track:1ce75097384473abe4b0a708df744fe87a4569c47cadcf73b6529d39a7f84bf8` |
| 47 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 437 | `declaration-track:2d39c96375aba23f92d2f66854a45163b1734fcf6d59124bb9562fec2182f419` |
| 48 | `def` | [presentationTilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/presentationtilde.md) | 444 | `declaration-track:f84c07a022fe083748736059b3d7d9dd73cd7c1ae230030cebec5c4602cf9fca` |
| 49 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 465 | `declaration-track:b554683c4238e9e13c008980f4fce42fee16579230710a0643832a639354fd5e` |
| 50 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 468 | `declaration-track:c276fa4f9fb06b65fe0bc67ce6aa8ed30d7a745033f3ab437eeb1071a5412642` |
| 51 | `lemma` | [isIso_fromTildeΓ_of_presentation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isiso-fromtilde-of-presentation.md) | 472 | `result-track:3b8755529710159702d0d85b98f580711b0fd87f9edd41356a17008f7e385c58` |
| 52 | `abbrev` | [IsLocalizing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing.md) | 492 | `declaration-track:e6d8ecb9855ad83c4cfcf5ee82417f45be565379e5efcb7a7fdd7ca1e3237d96` |
| 53 | `theorem` | [isLocalizing_of_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing-of-iso.md) | 496 | `result-track:130bbd58856157f261b3eeb978d953f7c269d396a533862bfa72836664307181` |
| 54 | `theorem` | [isLocalizing_iff_of_iso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing-iff-of-iso.md) | 506 | `result-track:78e9f316e114920284a5c6af000fda33989dc2fde9d9dd6eb8bc051bba5877ea` |
| 55 | `theorem` | [isLocalizing_of_isIso_app_top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing-of-isiso-app-top.md) | 510 | `result-track:2d6adc2b7b65e660ada20fffc67d7e8fa84f3c5ad53398d253d78b746a94779b` |
| 56 | `theorem` | [isLocalizing_tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing-tilde.md) | 518 | `result-track:283bfaeae4b98bd04b99b57b566075f97c9b720b2fbd73ff669f91dd2b01e910` |
| 57 | `theorem` | [isIso_fromTildeΓ_iff_isLocalizing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isiso-fromtilde-iff-islocalizing.md) | 532 | `result-track:99255807574147221d59d562d81d81bd77d8e4f382b108b28a5853ca86c573c5` |
| 58 | `def` | [pushforwardCompModulesSpecToSheafIso](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/pushforwardcompmodulesspectosheafiso.md) | 544 | `declaration-track:bdae45e8df2363cc381df272e6b8edab70b3336309567bfb917f314504a8f5af` |
| 59 | `theorem` | [isLocalizing_pushforward_of_isLocalizing](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing-pushforward-of-islocalizing.md) | 556 | `result-track:c02e0ff74f5dffa43e2ff5bc983bc6219ffdc31ab48bd2ca916c8c9ef3aa75ce` |
| 60 | `theorem` | [isIso_fromTildeΓ_pushforward](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isiso-fromtilde-pushforward.md) | 568 | `result-track:ed94db16b9a45efb88580b074d0b08ec8bcdb5baec41cc5da81610a0b2b86aa6` |
| 61 | `instance` | [Scheme.Modules.isQuasicoherent_restrictFunctor](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-isquasicoherent-restrictfunctor.md) | 576 | `declaration-track:1e48defc906bc1343bb71febe56c00dfdb68305ee5a17bf764ec51ba20148355` |
| 62 | `def` | [Scheme.Modules.presentationRestrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-presentationrestrict.md) | 592 | `declaration-track:0df38de1300b84d24bf26b05e45956cf36080bda9ed1719bd36fb0fd8d617385` |
| 63 | `lemma` | [Scheme.Modules.exists_isOpenCover_presentation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-exists-isopencover-presentation.md) | 600 | `result-track:a6b5fe9ca7f3f26eeaf934c69cb76da3f2734b43d8fba30f0c92684e8676e86a` |
| 64 | `lemma` | [Scheme.Modules.exists_affineOpenCover_presentation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-exists-affineopencover-presentation.md) | 624 | `result-track:bfa5e8a5381dcd9e495010545cc08e90c466fd9f1d29a18cf981e4e30b2a9420` |
| 65 | `structure` | [Aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/aux.md) | 641 | `declaration-track:87f896cbace9d655ebb6f9773ea834baad2694f2dca6d7dff2f1485e5d81ffc3` |
| 66 | `lemma` | [Aux.of_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/aux-of-le.md) | 649 | `result-track:68bf2ca09cbf6a683fc32c122cefbf4f161e759bdf819338f07bea93e6b9717b` |
| 67 | `lemma` | [Aux.of_eq_iSup_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/aux-of-eq-isup-basicopen.md) | 668 | `result-track:2df371ada7600cba27d684582fa15bd47ba6434a388fff079209ff1e89bf5864` |
| 68 | `lemma` | [isLocalizing_iff_aux](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/islocalizing-iff-aux.md) | 786 | `result-track:cc0106ef56c63e0fb5e4b15c28213601a49225d561c3ee2662070bf22db299a2` |
| 69 | `lemma` | [aux_basicOpen_of_aux_restrict](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/aux-basicopen-of-aux-restrict.md) | 806 | `result-track:f3e0e9c5dac11355d9c3dda2ff0819bb21357afcb26641d202fbc126e45fa77f` |
| 70 | `instance` | [Scheme.Modules.isIso_fromTildeΓ_of_isQuasicoherent](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/scheme-modules-isiso-fromtilde-of-isquasicoherent.md) | 850 | `declaration-track:8769939c18a9cb0c11b799f090e97df1e02a07c0529757f5ba1830c66c44f612` |
| 71 | `theorem` | [isQuasicoherent_iff_isIso_fromTildeΓ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/isquasicoherent-iff-isiso-fromtilde.md) | 876 | `result-track:24e74a1ce8e638b137e104063197b60f224c6c2df527c080786a413e8df7fbd4` |
| 72 | `lemma` | [essImage_tilde](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/essimage-tilde.md) | 884 | `result-track:bc6884cde439785806e00354ccc7dfbf23763ab3f118b555a099fea22f1395f4` |
| 73 | `def` | [tildeEquiv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/TildeNamespacedPublic.lean/declarations/tildeequiv.md) | 898 | `declaration-track:39778026cd625194a34593b4a092167758203f394109dd08a8aa8f46d0fef8d4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e6d8d41687c4c03f631a890243b04b0a28fea12e5e3903582ea0dbcca965a66f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/Tilde/Variant2a057168639849cc63533ed0b692225ad8acd3f0844a3ec963358a4bc5958516.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
