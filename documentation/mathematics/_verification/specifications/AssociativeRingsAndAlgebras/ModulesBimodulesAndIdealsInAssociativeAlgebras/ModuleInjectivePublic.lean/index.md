# Verification target: Module Injective Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6dc775ddd648a4cd36760639741d1a62649ec6c",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6dc775ddd648a4cd36760639741d1a62649ec6c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean.json)

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
| 1 | `class` | [Module.Injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-injective.md) | 63 | `declaration-track:d47ff26c1adc992d16a096310b2b1c06047c72b8442982634713051f0f448df4` |
| 2 | `def` | [Module.Baer](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-baer.md) | 70 | `declaration-track:054c0dec0341a8b69069a36b13bb6d66797a696a4df545660579f7de49e83afa` |
| 3 | `lemma` | [of_equiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/of-equiv.md) | 78 | `result-track:405e67d201130f9d7b5d9b75a2f52c2c56fd5ecea9814dfe8074724513496ca6` |
| 4 | `lemma` | [congr](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/congr.md) | 82 | `result-track:b0e5b831116a315e5e8a0f56044629b396561b74908ac2388e085ab1090d1530` |
| 5 | `lemma` | [iff_surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/iff-surjective.md) | 84 | `result-track:f2f8d0a8b30572295ac551484314c1c569910313dd02186e01c8083f39fe03ab` |
| 6 | `structure` | [ExtensionOf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof.md) | 99 | `declaration-track:e589a180a88448521621ef0d2fc1566b770199048fd8c5c51b24664e96edc16a` |
| 7 | `theorem` | [ExtensionOf.ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-ext.md) | 108 | `result-track:427600f08d6c68ede7d4e9708c800b99ccffa8353369341ad15e33f37b137485` |
| 8 | `theorem` | [ExtensionOf.dExt](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-dext.md) | 117 | `result-track:c4cfa53152bb6af6ce30245327d0b48f9ca0fac30ba6c0284b090e592976086a` |
| 9 | `theorem` | [ExtensionOf.dExt_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-dext-iff.md) | 123 | `result-track:62d925fff654a0e17292bab9161c455247fa89e7d598efa4750f8239b5b513b4` |
| 10 | `theorem` | [ExtensionOf.toLinearPMap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-tolinearpmap-injective.md) | 129 | `result-track:20998f10cd999d3a996357b93271d6a3ea4cdaf0c83e94c5c859bd77739a9db3` |
| 11 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/instance.md) | 135 | `declaration-track:1ad5837ba1b185d8c23f60ce5abefa15b8f9b782ff8a28ef845e0a6d498610ed` |
| 12 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/instance-source-edition-2.md) | 146 | `declaration-track:5a16ed4e028e5b3e231a1cc101b10039df35735c1ee71d94da8ddfeb8d6287bf` |
| 13 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/instance-source-edition-3.md) | 149 | `declaration-track:c50c3a48cda1c946b6c970243eb78c36a21d925cc49dabe0fd905b5e85968a95` |
| 14 | `theorem` | [chain_linearPMap_of_chain_extensionOf](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/chain-linearpmap-of-chain-extensionof.md) | 155 | `result-track:11aa7458e7e4de77aeedcf9a17bff815449b78afa6c883a5ce0186d547b32405` |
| 15 | `def` | [ExtensionOf.max](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-max.md) | 162 | `declaration-track:4ada5cffc00e6956683bbe29267b4cd66261468e227330c2e01219a7071266c8` |
| 16 | `theorem` | [ExtensionOf.le_max](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-le-max.md) | 178 | `result-track:316bfcd25f803d3b8f75bdccb612c6580c00d7f9a6144173ae02d440046fb09e` |
| 17 | `instance` | [ExtensionOf.inhabited](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionof-inhabited.md) | 186 | `declaration-track:4387bc3fba67c525eed477429c8550b763363357d9e7f3e7dfeea3dcc302c1a4` |
| 18 | `def` | [extensionOfMax](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmax.md) | 211 | `declaration-track:221f93e6aab1122d23f548461852fa3434659af2b529371fe7a90d0461666021` |
| 19 | `theorem` | [extensionOfMax_is_max](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmax-is-max.md) | 215 | `result-track:07d1c7d8a3482c61e8e45e779d34f532387a4b983fa5c2e6fb1ecd8b13f39db1` |
| 20 | `abbrev` | [supExtensionOfMaxSingleton](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/supextensionofmaxsingleton.md) | 222 | `declaration-track:41ce32b149ab96dd30d2721de54a7a0a5675f9c0f956901d8162d13ddec76318` |
| 21 | `theorem` | [extensionOfMax_adjoin.aux1](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmax-adjoin-aux1.md) | 228 | `result-track:a6ddd278ef154cd3f499b81b4bdc02e507f6d7370f4cd539b6129805ba7b0a46` |
| 22 | `def` | [ExtensionOfMaxAdjoin.fst](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-fst.md) | 240 | `declaration-track:2cdcda5c0ee0114c538b6bcfe858dc729c757897e0253e21d47f69fe33fd363b` |
| 23 | `def` | [ExtensionOfMaxAdjoin.snd](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-snd.md) | 247 | `declaration-track:0804720bc7cedcbce3fb5f0e2b075faecb42d0e2eda2cc04a4d546450224feae` |
| 24 | `theorem` | [ExtensionOfMaxAdjoin.eqn](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-eqn.md) | 250 | `result-track:1d260f9b8006731281f0a8085353e212d2274f423ad130e33ff9de0491dcbf5d` |
| 25 | `def` | [ExtensionOfMaxAdjoin.ideal](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-ideal.md) | 258 | `declaration-track:f827613ca2e3928117f06db44ba17b89037a7f6b95ab5ba61a3c01debe2c9f1d` |
| 26 | `def` | [ExtensionOfMaxAdjoin.idealTo](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-idealto.md) | 262 | `declaration-track:5016e6bd55656dc4c126200446d470b38f6858e4dbc8fe31f7d0c36f2ac2d739` |
| 27 | `def` | [ExtensionOfMaxAdjoin.extendIdealTo](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extendidealto.md) | 275 | `declaration-track:e689c279fd912d403e846f599af6236b81f5e7c99e9d86651b56f5b8bfc3c07c` |
| 28 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_is_extension](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extendidealto-is-extension.md) | 278 | `result-track:e7d1a532e8514c70e2f5b9d2f9230bfee89f99bfd377dd4eed90a957018855a8` |
| 29 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extendidealto-wd-source-edition-2.md) | 283 | `result-track:464e323e39d4307d97d8da035d0680de3eed7f52e6c6962b52cf43702c0421e8` |
| 30 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_wd](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extendidealto-wd.md) | 293 | `result-track:2572785de81d0aeeb9c418207c250917b5d24fe4385ae8d0e959e970e11c1569` |
| 31 | `theorem` | [ExtensionOfMaxAdjoin.extendIdealTo_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extendidealto-eq.md) | 300 | `result-track:aa68794d4e4624ee84e61cf2c9edd58250e79752034205d898ecf45faf4d9033` |
| 32 | `def` | [ExtensionOfMaxAdjoin.extensionToFun](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extensiontofun.md) | 308 | `declaration-track:853cfa2d3459786850d21989e4db698b152bfc8d8ee3c0385f554616a2805fc1` |
| 33 | `theorem` | [ExtensionOfMaxAdjoin.extensionToFun_wd](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin-extensiontofun-wd.md) | 313 | `result-track:3e9936118a63403b360526627fe1cb2fb8a12f91570fb461155207d753d59e18` |
| 34 | `def` | [extensionOfMaxAdjoin](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmaxadjoin.md) | 337 | `declaration-track:2e6386e0ddda5a3255b672ecd60ce98b432ad34b7243c72c7dd61a420ad09a00` |
| 35 | `theorem` | [extensionOfMax_le](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmax-le.md) | 369 | `result-track:76c0b836424da595b93099e38a92c98f0f222b9c0819f68559472e93d75fb4c3` |
| 36 | `theorem` | [extensionOfMax_to_submodule_eq_top](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extensionofmax-to-submodule-eq-top.md) | 377 | `result-track:a64f7b3df80fa18620a82125d15916f3f2da6bf29d0d10bdc4b0f79f8e983ee2` |
| 37 | `theorem` | [extension_property](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extension-property.md) | 384 | `result-track:116f3bb49afd298dd3079ad61347e011a758b0e910113bd13b6442c9c5d67000` |
| 38 | `theorem` | [extension_property_addMonoidHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/extension-property-addmonoidhom.md) | 394 | `result-track:9c5f5ec0b710ecd967025a89b2190695980300216283887bd325d970f7f4451b` |
| 39 | `theorem` | [injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/injective.md) | 401 | `result-track:1b902c16ff51274a99e9615122e82febee2a4cfc310143b0740c825446f96996` |
| 40 | `theorem` | [of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/of-injective.md) | 406 | `result-track:024aa525c93ff21f6b1759889200f7f9c01e0696d908785c9166e365fdbb9c48` |
| 41 | `theorem` | [iff_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/iff-injective.md) | 414 | `result-track:2c8e93c2d8cbb5c1d857a8418ca1c90b5981da8d5909d153d7334e4b765f3469` |
| 42 | `lemma` | [Module.ulift_injective_of_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-ulift-injective-of-injective.md) | 423 | `result-track:afc46af6317f1a9eeaef925cbabfd1c1f389a5419f23d869628ff27822319588` |
| 43 | `lemma` | [Module.injective_of_ulift_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-injective-of-ulift-injective.md) | 429 | `result-track:5943221e42a40e1e8c6aafefcf0f2e77d2fc9305f35892b166e0fcf6f09856ff` |
| 44 | `lemma` | [Module.injective_iff_ulift_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-injective-iff-ulift-injective.md) | 442 | `result-track:7b45bd842543d093e8219a4f9ef3696193b78e58692ed68c9e1a79a4e6851068` |
| 45 | `lemma` | [Module.Injective.extension_property](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-injective-extension-property.md) | 458 | `result-track:cd8b6ddd45744f6b5fc5b298fcf9920c53195445fbda3c423f8943536d3b6c81` |
| 46 | `instance` | [Module.Injective.pi](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-injective-pi.md) | 467 | `declaration-track:0ee746377f95c31a265d326d9cb02753708ce2092172c8b194e385c5832fabd8` |
| 47 | `theorem` | [Module.Injective.of_ringEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/ModuleInjectivePublic.lean/declarations/module-injective-of-ringequiv.md) | 481 | `result-track:4f651d6206a9eb9924fdd648cacd93754436a180703d53aa4a7ba88700773d00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42b2b27d7b885f73af573d7d35c30f0a9b968161c493e8b9a9249491675d06cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Injective/Variant67dc28a69721c7a19504b37464c0b7eea8f3a1982bfa5051ecbb80b673e71aae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
