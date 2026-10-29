# Verification target: Filter Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc599d1234ca9ea33dd5965d8cfdd84417100146",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantddfc929bdb30caf13b58aabf2314dbb180d7c859811c35ff2a54e577aa527670.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/index.md) · [Full source](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc599d1234ca9ea33dd5965d8cfdd84417100146`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantddfc929bdb30caf13b58aabf2314dbb180d7c859811c35ff2a54e577aa527670.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantddfc929bdb30caf13b58aabf2314dbb180d7c859811c35ff2a54e577aa527670.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SetNotation` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filter](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/filter.md) | 77 | `declaration-track:26e08b0b68c8c83d121f3ad022e3a101272bccbb51502574d271d00c2e445a3c` |
| 2 | `theorem` | [filter_eq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/filter-eq.md) | 91 | `result-track:2581dfcd2fab154b7cbd657d1fb1f677e0391aa994de50be3724d68e6f2f18d6` |
| 3 | `instance` | [instMembership](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instmembership.md) | 95 | `declaration-track:0ce287338f53dd7d464a16a72f712eef75f790c999dcef292a6e48889bf91249` |
| 4 | `theorem` | [ext](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/ext.md) | 98 | `result-track:21c755d6bdfb858c97b25d6d1a994b86a969c14acdb9166d710c6093a0385b01` |
| 5 | `theorem` | [mem_mk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-mk.md) | 101 | `result-track:9e49f64853d4255cd60001e59e478bf050f1535ada83db97d2800e811440838f` |
| 6 | `theorem` | [mem_sets](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-sets.md) | 105 | `result-track:02acb5696643013247c3241c1e501d575bf86fb6ec75d31d4dc74ad24b321345` |
| 7 | `theorem` | [univ_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/univ-mem.md) | 109 | `result-track:0bc5ff450744ef69ec87be06da9ea00a04c178089414ddc81a8aa988d008a9a8` |
| 8 | `theorem` | [mem_of_superset](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-of-superset.md) | 112 | `result-track:d02453811480ab8dc314a1e908b8eed13027ecde0f82351902b20ef8cc5f850d` |
| 9 | `theorem` | [univ_mem'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/univ-mem-source-edition-2.md) | 115 | `result-track:84b2085f835caf35e7c7252217ae470bf278081c6d8cda3d167ae6ff6111c37a` |
| 10 | `theorem` | [inter_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/inter-mem.md) | 118 | `result-track:a037ff62027ffc23fe0669689b5425be8134dcdd2e9db88d3ae22b9ec928a542` |
| 11 | `theorem` | [mp_mem](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mp-mem.md) | 121 | `result-track:9b911a73bf259a32e2354e9715c111e7c4f65d01078cd3c500b59848939cff48` |
| 12 | `def` | [copy](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/copy.md) | 125 | `declaration-track:edf9a2782d2d061b40a67c9d625f5cf4e3233e515f0a7b649d8e98c94ddc66a0` |
| 13 | `theorem` | [mem_copy](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-copy.md) | 131 | `result-track:9f4438ffd815d6547581edc80de0d9f853de3665a95acd4cdf55e313c065a236` |
| 14 | `def` | [comk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/comk.md) | 136 | `declaration-track:88c82a25a5ae05da6c29b62846e9c8be935a834f7316f99fe37b3bbab8a9d30c` |
| 15 | `lemma` | [mem_comk](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-comk.md) | 144 | `result-track:82189499a3d9484d6e0426a2c7300430ca5a174385021c915e937447749d35bf` |
| 16 | `def` | [principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/principal.md) | 149 | `declaration-track:cc09e2cd4293a61e570d8a01d18297d17ae3a1e02b1e19f433c5541f512a2f73` |
| 17 | `theorem` | [mem_principal](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-principal.md) | 158 | `result-track:d941f589fffa0a8d31d9b9f2d7aefe4e627cd36e6778903107e4a6b8290df6ce` |
| 18 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 162 | `declaration-track:870eb3f34438d4bb0f820c17016cbe7e0a5df650d64508fed6d9b3a572c82cec` |
| 19 | `theorem` | [mem_pure](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-pure.md) | 166 | `result-track:b975b0c918f700293048b37e7a39eecd0cc06966d4dac83d9635366bb7422d28` |
| 20 | `def` | [ker](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/ker.md) | 170 | `declaration-track:c91a438f5f4f6507226e908e357cae922bbd40195c0312ce5366e159a0b9a60d` |
| 21 | `def` | [join](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/join.md) | 173 | `declaration-track:3def08f0a498bcf0526cbe0ae703022555785d3e3d47bdf829cbd6007df53765` |
| 22 | `theorem` | [mem_join](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-join.md) | 180 | `result-track:08b730a1065bb43388a1a1db38e1677f8c3dc1f2a35ecef5a6f62c6381da6823` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 183 | `declaration-track:ebc7cbad8d8348f76936303a50599fe7d47620d7239171166faf7473e97a7261` |
| 24 | `theorem` | [le_def](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/le-def.md) | 189 | `result-track:df69601e443061f2a904b3ef81e591646e062366817c86a8973217a8064d36b7` |
| 25 | `instance` | [instSupSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instsupset.md) | 192 | `declaration-track:be08e8f48b7852a0fc80fd0ae450d78639e0cb97bbdfd962ecb01aaeffdbac98` |
| 26 | `theorem` | [mem_sSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-ssup.md) | 195 | `result-track:8b13c6c3f4a9ec9614e5c9c511d735f930e9afd6a9f11893df097cab3ca35155` |
| 27 | `def` | [sInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/sinf.md) | 201 | `declaration-track:df497e6bbf335c59ac9af9ef3022973d36fc7b89fb7b7b67d9895ae97b368966` |
| 28 | `instance` | [instInfSet](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instinfset.md) | 203 | `declaration-track:c5a546e4eea372a5ac162d851e67a17037bc99d0d2b641e369ddd50dceac9c41` |
| 29 | `theorem` | [sSup_lowerBounds](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/ssup-lowerbounds.md) | 206 | `result-track:ac8963aad843b4a4aa27dfef71f1c229f4876d99ace44f0e3d1b66124315bdf8` |
| 30 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 209 | `declaration-track:718aa8026b4145f2d66dbeee0024cf0fd2ea8a8d9930645b186002df90e99990` |
| 31 | `theorem` | [mem_top_iff_forall](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-top-iff-forall.md) | 212 | `result-track:aaa904a8befb3dd740c790aa3da6327a03aa324806ce3d7bec8c13275b4f1faa` |
| 32 | `theorem` | [mem_top](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-top.md) | 216 | `result-track:56bac2110efdc0549053ba5b752bb91ae0583f6b9ca18d9e160fb34b704142d9` |
| 33 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 219 | `declaration-track:61f126c49a15049a1c32cc708250f7d6387e2daa6e2880b386cd472af6afcfc3` |
| 34 | `theorem` | [mem_bot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/mem-bot.md) | 223 | `result-track:56efafad135466e32eed3cc72e211a5346aef4692bf9f1efc7fda7e23cb08f6e` |
| 35 | `instance` | [instInf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instinf.md) | 228 | `declaration-track:88fb188e027dfd601557473a488a1a2a41092238b86a0bce854c6966153b0ec2` |
| 36 | `instance` | [instSup](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instsup.md) | 243 | `declaration-track:07b98f1f177c8c7de32a05f818f4952108f0790a56c95b382da1e1cd60f450a2` |
| 37 | `class` | [NeBot](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/nebot.md) | 249 | `declaration-track:a66d38267f3e39eb6e21d2f2862384f099c7df90d6c5994cfc0fc669e20719ed` |
| 38 | `theorem` | [neBot_iff](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/nebot-iff.md) | 253 | `result-track:ba64879a2a497dcfd8d147e949cad5961507780539d96f0f3aff57969c529ec9` |
| 39 | `def` | [Eventually](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/eventually.md) | 258 | `declaration-track:26d344b7215bcf4f69ce422be755c81cb2c06e527f45ef04f0edbbc00eb630f7` |
| 40 | `def` | [Frequently](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/frequently.md) | 266 | `declaration-track:6ca8b6bc7d1ce1a2810122a1e86ad711b1ad87df0bf73b13257d2eabedce9dd5` |
| 41 | `def` | [EventuallyEq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/eventuallyeq.md) | 274 | `declaration-track:e548d603a9b16efc2c2f04a9ee8f1c0b5549080f886a6e3637ac8ab3fd6b98e3` |
| 42 | `def` | [EventuallyLE](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/eventuallyle.md) | 281 | `declaration-track:770045172f5aa275e5bb71a7ced338a7f1412bca0652672e49556fa9d363d5ad` |
| 43 | `def` | [map](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/map.md) | 288 | `declaration-track:c98454e636261cf0385fe102a4d910701a9f13fb81af6aa8a7899e748574c1e7` |
| 44 | `def` | [Tendsto](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/tendsto.md) | 297 | `declaration-track:5ad0854a893b52a7662110f07f2803ef06953666e51a2af96b9642db257006b4` |
| 45 | `def` | [comap](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/comap.md) | 307 | `declaration-track:0d85029446e6c74c5888999af9091a58535697a045e73ffa797b433b1405956e` |
| 46 | `def` | [coprod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/coprod.md) | 315 | `declaration-track:82f52ac8f2cfa01adefcdf52d2e6266e2f0b366c4846d5e3bf2542a732fe8e60` |
| 47 | `instance` | [instSProd](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instsprod.md) | 320 | `declaration-track:05273139442998b3187ae745a9a8d8eeb9ca99dccbf2f5b85b054dfb0eb61db4` |
| 48 | `def` | [prod](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/prod.md) | 327 | `declaration-track:0b144ee8890e7b601d1eebd75133c68f6e47827cb5461c2b70eb2129da05a183` |
| 49 | `theorem` | [prod_eq_inf](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/prod-eq-inf.md) | 329 | `result-track:d056a1840575251e95a257aff871e05daa74089e1ac92a10d93223ee5f25a517` |
| 50 | `def` | [pi](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/pi.md) | 333 | `declaration-track:efddd811c7f5f6031befe47eb5c0664e5433961851a80ff4a951f6a61143225a` |
| 51 | `def` | [bind](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/bind.md) | 340 | `declaration-track:9fc5dd98886adc0815f01b7068dcee6109e61240c79bfd9b938791d21177a409` |
| 52 | `def` | [seq](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/seq.md) | 344 | `declaration-track:f74ee66cdda2f38add1eccb5a9f9eaa34f1bf83b47ae9fa77b278cb0dfb7363f` |
| 53 | `def` | [curry](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/curry.md) | 357 | `declaration-track:89ebfad3762bd3ac624ca6ddedabde379f0fce0f6c014da9601a91be6d1a7c19` |
| 54 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 360 | `declaration-track:b3c595b4a89949e69b1fbbf531742fe3dd4027d76aeec6830156d5463043c384` |
| 55 | `instance` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/instance.md) | 363 | `declaration-track:41fd6c05108ea183832c5589dd3c67ddb13f761235ea11c7443bb173c6a0be89` |
| 56 | `def` | [lift](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/lift.md) | 367 | `declaration-track:725b7aae4f556d166dbc8d3663387b2373850487b6dab33f36c87aaec155236b` |
| 57 | `def` | [lift'](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/lift-source-edition-2.md) | 372 | `declaration-track:800368100866f1be50bdab5d8f7abdeb13bb14964d245dde504d9bb935f520a2` |
| 58 | `def` | [IsBounded](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/isbounded.md) | 378 | `declaration-track:5a7840379659263a777f5968620586a2fdee5892f319d462d90765db0b491936` |
| 59 | `def` | [IsBoundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/isboundedunder.md) | 383 | `declaration-track:4dfb7836db56427383bf054d6593e43df4f940c78d3b05640cfc27e864532797` |
| 60 | `def` | [IsCobounded](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/iscobounded.md) | 396 | `declaration-track:3ef4ac8b4da179988a406e954326076098a8007ec9900b1f24d9353fa5328f85` |
| 61 | `def` | [IsCoboundedUnder](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/iscoboundedunder.md) | 402 | `declaration-track:4b54f608ea880399495481202211b32a80f4941b9e5aef77f355e640fc78a9e1` |
| 62 | `syntax` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/syntax.md) | 425 | `declaration-track:ddcac101d3a27cb3bd72c6d88e822b01264a847c6029ff8844cb263b79cab025` |
| 63 | `elab_rules` | [(anonymous)](../../../../../GeneralTopology/GeneralitiesInTopology/FilterDefsNamespaced.lean/declarations/elab-rules.md) | 428 | `declaration-track:eeacd108daf5ef572ccfeca98969c63cd2698b7e3ac1a92168c8fa12c463b4a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0ee920bad422ddc309793d76c388cb2ca17b83cecbe7f168ff0e59dd252849ef -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Defs/Variantddfc929bdb30caf13b58aabf2314dbb180d7c859811c35ff2a54e577aa527670.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Defs/Variantddfc929bdb30caf13b58aabf2314dbb180d7c859811c35ff2a54e577aa527670.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
