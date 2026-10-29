# Verification target: Comparison Tests Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ea2fc0f99ea639f6ec50899f70fc3f1a1408493",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComparisonTests/Variant8782864438e3a14187947682d6009ed6297fdf9af0ddd5e5359e52427b0702e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ea2fc0f99ea639f6ec50899f70fc3f1a1408493`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComparisonTests/Variant8782864438e3a14187947682d6009ed6297fdf9af0ddd5e5359e52427b0702e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComparisonTests/Variant8782864438e3a14187947682d6009ed6297fdf9af0ddd5e5359e52427b0702e0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Comparison.Chain` — import line 6; external provider; requires a separately pinned dependency.
- `DAF.Comparison.Naturality` — import line 7; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Codec` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [includeTwoThree](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/includetwothree.md) | 29 | `declaration-track:f371b449bdf5f3f7b9decb7d2b9a9ea81e6cd1b02052100e5cde03de154d50a2` |
| 2 | `def` | [includeThreeFour](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/includethreefour.md) | 32 | `declaration-track:0338b7524607f682ddcee203fc7f80577046b3aa86deb482f86050f77d9fdc3e` |
| 3 | `def` | [includeFourFive](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/includefourfive.md) | 35 | `declaration-track:283d0dad7495e463b7e819a2da4e2f8f9bf06918e777d7f91433ea564886e124` |
| 4 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-18.md) | 38 | `declaration-track:a8eae29f7c1bcba6fdc48a050f42bd497af7658743bd866f80c635610c822236` |
| 5 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-6.md) | 43 | `declaration-track:448cc503dcd53ddb6a2b8a94351d877c107b2f4537126891e909ea9c46d90f7e` |
| 6 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-17.md) | 48 | `declaration-track:99853aca2a4def559632f57d0a313701473a9ceb88f91ff0c04984c482604a01` |
| 7 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-8.md) | 51 | `declaration-track:5d1e007eda22ebf72336b12fa750484be35ad9c14ca817a493e964e72ffab2b2` |
| 8 | `theorem` | [includeTwoThree_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/includetwothree-injective.md) | 54 | `result-track:e5e022c3cf12fd69e8830d9f46efe8b183fd40e2ab4570665bc2491de32eb09a` |
| 9 | `theorem` | [includeThreeFour_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/includethreefour-injective.md) | 59 | `result-track:79736b5cba7518444eac564985f9a839573c488e2501bc82491d1a1dc77386e1` |
| 10 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example.md) | 64 | `declaration-track:13093d971894342ce9089d9b5a83106c0e7321c0480154465f302993eca66d5b` |
| 11 | `def` | [finTwoToUnit](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/fintwotounit.md) | 67 | `declaration-track:30c4a79d6c7c8cdc673187b9860cc390d4d315cfb572b731707ab94d37a88b1b` |
| 12 | `def` | [unitIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/unitidentity.md) | 70 | `declaration-track:0c4094e64210e422cc546497d3b71fd0731216203b7a650c2a0acba37dd178b2` |
| 13 | `theorem` | [finTwoToUnit_surjective](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/fintwotounit-surjective.md) | 73 | `result-track:54bc0295657002e11d9e6c442a4bc4b0804b016d0816bce731787893be108fde` |
| 14 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-12.md) | 78 | `declaration-track:707d3ae8f23564eb82e54f406fedcb73dca379e2e3c1fc114c92f1149a3a7604` |
| 15 | `def` | [unitToBoolFalse](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/unittoboolfalse.md) | 81 | `declaration-track:7695ddac94d735ac116f1ea121edf572df87e46c6a8d7f99b40d93c593e81e9a` |
| 16 | `theorem` | [unitToBoolFalse_injective](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/unittoboolfalse-injective.md) | 84 | `result-track:631b403e516f744f7ad33c961be43d13015ef3e39019382278c3c1a841012886` |
| 17 | `theorem` | [surjection_then_injection_not_automatically_bijective](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/surjection-then-injection-not-automatically-bijective.md) | 91 | `result-track:8dcacca6d18214e4df7192de7a692a6a9b80364fb640491797d57902789976ef` |
| 18 | `def` | [identityNatSpec](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/identitynatspec.md) | 100 | `declaration-track:7e05db80e669147a0ec2974224c47fdb900a65b9fdb09c62f5e56938c1a76284` |
| 19 | `def` | [identityNatClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/identitynatclaim.md) | 103 | `declaration-track:c90997d84e95be301b66af94dbb3bfa9a3aef178eed2f366f759d581015e7070` |
| 20 | `def` | [conditionalIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/conditionalidentity.md) | 106 | `declaration-track:75e53004426848cabb9c3ddaf6971ea318d1ac026a5371a4015ce3dc25b02855` |
| 21 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-9.md) | 111 | `declaration-track:69bb5fa906f974cf1079852d127314e53fa93d83212135e24d7a092740aea7ba` |
| 22 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-3.md) | 116 | `declaration-track:2fa949f979b1e12d179f7d6bc2e4123a1e2a18f19bb094bd17c05b027321ffee` |
| 23 | `def` | [conjecturalIdentityClaim](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/conjecturalidentityclaim.md) | 122 | `declaration-track:3c6bda70909a1f1ace5d0934cbf904af67772c26af430faba447a15525025926` |
| 24 | `def` | [conjecturalIdentityTarget](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/conjecturalidentitytarget.md) | 125 | `declaration-track:4b31364f2001ca0d05f88c50a253a9f45069644c0557ec165024d843b4e2509b` |
| 25 | `def` | [conjecturalManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/conjecturalmanifest.md) | 130 | `declaration-track:3a285462713b45d49f15aec54f1bc173ae6fb20b663abbe6dbe954b0d2596daf` |
| 26 | `def` | [conjecturalResearchChain](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/conjecturalresearchchain.md) | 134 | `declaration-track:55cda3d0d01b8ab8a297546bb1cb5176704c253a4007e76a728293403fc5a259` |
| 27 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-14.md) | 137 | `declaration-track:816d1e4c991f6b299459a3f534c4d4a0f3f485988976c0537d652d42b40e2980` |
| 28 | `def` | [boolSelectedMap](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/boolselectedmap.md) | 142 | `declaration-track:fa4f6b07608d895ce0f745bf24dba218625d16e50a00a8736a3733321e825eeb` |
| 29 | `def` | [boolSelectedComposite](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/boolselectedcomposite.md) | 145 | `declaration-track:3b801e28b8502daf0808836b007b4c8205c26caedcd5bfdad29df2f046fdec07` |
| 30 | `def` | [boolSelectedChain](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/boolselectedchain.md) | 148 | `declaration-track:eebb47a2a3d1f789a12638a9b0dce7be2d98f8d0c75d57a905bd2a37fbc24992` |
| 31 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-4.md) | 152 | `declaration-track:3c68734ac5871e8a88f752e74b6d0bc0d8b774baaf409be310991a9d4d0b1c2f` |
| 32 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-10.md) | 155 | `declaration-track:6c1cfba850deea39ff5bd424b52cbf4895fd9c130baa752c77db6c3442e09010` |
| 33 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-15.md) | 158 | `declaration-track:8e24f76caf0df45b9f26cd7a302504e5de10e4ab0332a143d5800d34b20197a7` |
| 34 | `def` | [representationIndependentMap](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/representationindependentmap.md) | 161 | `declaration-track:156c21c3962e8e2e2ef6dc9a57e07fb45a5af64eb7def06973580bbab60cef2d` |
| 35 | `theorem` | [representationIndependentMap_proof](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/representationindependentmap-proof.md) | 164 | `result-track:102639af4168819c14f5b7c8f7fc92018dc243cb4a75b737d56db61bd3bcc657` |
| 36 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-21.md) | 169 | `declaration-track:e4d28f2d12aa1b153afc7eab19a1f15b1b76feeb7eb1eb1e83f2b4b7573b53b6` |
| 37 | `def` | [integralIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/integralidentity.md) | 177 | `declaration-track:12ce0a8ac87a97eaf69087d8cdcd100ebc26203e3b925aa27f2a5de1d7f62b01` |
| 38 | `def` | [rationalIdentity](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/rationalidentity.md) | 182 | `declaration-track:13bf10b4533e419ddb7b6206d9752a6a26a5364fc6499e9bf531e78b3954c48c` |
| 39 | `def` | [integerToRational](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/integertorational.md) | 187 | `declaration-track:732fead34bfa8c8040677957a196570a0b59546733317339f4ace9a7d914df0e` |
| 40 | `def` | [changedCoefficientComposite](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/changedcoefficientcomposite.md) | 193 | `declaration-track:71faf431ac7b6f088ffdebf0b7bc73eaa7fc68df65444e2ca97a30ad9e4ea9c4` |
| 41 | `def` | [changedCoefficientChain](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/changedcoefficientchain.md) | 196 | `declaration-track:4db0c6e8004d123dee3dd294c4758acccfcc754ffe874c6c9b92a432385b005f` |
| 42 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-5.md) | 203 | `declaration-track:3d2d651681192b2354d4d7e35835315dfc52946eb3f42ffcd7aa0e12f3b04fb6` |
| 43 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-13.md) | 206 | `declaration-track:747961efc7202ba4a3679b61247dcc12c32b4211cd1003b8537a396052c108b4` |
| 44 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-11.md) | 209 | `declaration-track:6d241015660c619cf01ffd7549da212c18d194aa66518b44836a1963d6001431` |
| 45 | `def` | [bitStateSystem](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/bitstatesystem.md) | 216 | `declaration-track:dbd5134b281e3413dcb4812ef0635290ec97faed889516639d3e49a0e0774a55` |
| 46 | `def` | [bitStateFactor](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/bitstatefactor.md) | 224 | `declaration-track:9e015d384a4caceb685e236270f40e7e56bf8515388407bd7c539e3ada275473` |
| 47 | `def` | [bitStateIso](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/bitstateiso.md) | 228 | `declaration-track:01631662ad9224864dbdf66c68d05eb83de8dc457636aa9711a1aafdb7a051cb` |
| 48 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-2.md) | 231 | `declaration-track:276a81be2eef13cc5c5e477855db42cd4246c9003ed15017b03949782ba6fb5b` |
| 49 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-7.md) | 238 | `declaration-track:4db041554cdee96ce40e5920788aa5dcf548172ca5bffe9a3a36adcf38bf33da` |
| 50 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-19.md) | 241 | `declaration-track:a980b01bd8ad2ecbfbc56fb4e9d9d316524982d3284a6d2b5245a102820bf761` |
| 51 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-20.md) | 244 | `declaration-track:d38a2ba1e68979ab50c5f25d632b7425b9b9b078d94bf637d04914f7740e61be` |
| 52 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-16.md) | 249 | `declaration-track:96396d909f2fae81757a070e402d2f4d00b7c60c7457fcbbd0161af67b925666` |
| 53 | `def` | [filesystemValidPacketComparison](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/filesystemvalidpacketcomparison.md) | 254 | `declaration-track:735859a2d10fbc06b625cb45b9c16c2b49795eb10cd27699a871a7a6312d1a9f` |
| 54 | `theorem` | [filesystemValidPacketComparison_bijective](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/filesystemvalidpacketcomparison-bijective.md) | 259 | `result-track:f8e4a4f61a7cd6ee6b698b089e7d77fa995e1888d82c5f62ee83f7bfdada573f` |
| 55 | `def` | [filesystemValidPacketComparison_canonical](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/filesystemvalidpacketcomparison-canonical.md) | 264 | `declaration-track:6b6b55f86a887b733190ae0dbc0957973d8631860c624ee6a218cc4422e499b8` |
| 56 | `example` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/ComparisonTestsNamespaced.lean/declarations/example-source-edition-22.md) | 273 | `declaration-track:fe3d140cfcd11bafa9182aa203786b76b487e6408386758a3f1c4f79b09b6d5c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0468f73f386e970bb0fbf276d9890f7c3d951a1df3cc26c8b743e5e159bf456 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComparisonTests/Variant8782864438e3a14187947682d6009ed6297fdf9af0ddd5e5359e52427b0702e0.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ComparisonTests/Variant8782864438e3a14187947682d6009ed6297fdf9af0ddd5e5359e52427b0702e0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
