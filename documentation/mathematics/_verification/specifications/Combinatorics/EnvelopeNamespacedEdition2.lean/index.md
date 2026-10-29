# Verification target: Envelope Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fde2f19cbfce0b804ddf0bb5c9ba5a3958b2754d",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fde2f19cbfce0b804ddf0bb5c9ba5a3958b2754d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Union` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [graphProfile](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/graphprofile.md) | 36 | `declaration-track:248a4ce7e461eecf78bd49f87ecacad80c58f3b2afb037860fe787c978cf28fb` |
| 2 | `def` | [recordSchema](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/recordschema.md) | 38 | `declaration-track:ec753f859f983add1267ca8951f31e4f8bac54d5d502ab8a29bc54272752f75d` |
| 3 | `def` | [payloadSchema](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/payloadschema.md) | 40 | `declaration-track:78404aef5256994e3814325adf83639f35ad4b0260ecb094abd291b07ab6c782` |
| 4 | `def` | [restrictionPolicy](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/restrictionpolicy.md) | 42 | `declaration-track:d531570eafa5822ad4315e161db74822d1b06defb3b9b44f866d9534e4876e3c` |
| 5 | `def` | [nativeHead](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/nativehead.md) | 45 | `declaration-track:cb75ff9b427d36d20022893cd3daeccb83ea24fa8d6fa6babf2c151b4cda42ff` |
| 6 | `def` | [nativeSourceHashes](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/nativesourcehashes.md) | 48 | `declaration-track:4a4a55b5617e4d017ad0131dce08ce3c66f9450ddef2afb847953cbebda3b362` |
| 7 | `structure` | [SourceIdentity](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/sourceidentity.md) | 59 | `declaration-track:3c0cd325a54dd9426ffca4a08c146d1cf352b8bfcfa4d2069c88249074bd482d` |
| 8 | `structure` | [Attribution](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/attribution.md) | 71 | `declaration-track:4741bcd58e5c4d1fec5ccdbf94367b3026fe7bb01b66f621a92e2bae4a2a135f` |
| 9 | `structure` | [Restrictions](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/restrictions.md) | 79 | `declaration-track:8d3980030e4016a2bbab2aca2223cd57422b43dfae4a6790d3ec36efa285e061` |
| 10 | `structure` | [Header](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/header.md) | 91 | `declaration-track:0f1a7ed9b3dead8c086e2569e9217c4dfa3f9d48b5ca2efff603c0770f2bb223` |
| 11 | `structure` | [Reference](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/reference.md) | 107 | `declaration-track:6366f3e8fc41b339fad5f6e075871ffd27b2a926eacf8388a7d1b4d291e7ca53` |
| 12 | `def` | [reference](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/reference-source-edition-2.md) | 117 | `declaration-track:d1297507747688b3848dc0745bde1e3c776ce39250f0af3b835ce136243d998d` |
| 13 | `structure` | [Content](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/content-source-edition-2.md) | 121 | `declaration-track:c26538786169fd5815028f70a1b4d13c408bd45ebdc922817f54e81b2ae9961b` |
| 14 | `structure` | [Contexts](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/contexts.md) | 131 | `declaration-track:19cd49b7665ccfe42c5be9437d464259c20c69638dd0830ec13542be65b49e33` |
| 15 | `structure` | [Shell](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/shell-source-edition-2.md) | 147 | `declaration-track:a0826cc668360f7d5cc66ff696182d90fe667ba5f9a8ef04063d2eb1d8cf83ae` |
| 16 | `structure` | [EnvelopeRecord](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/enveloperecord.md) | 155 | `declaration-track:0a18333efda4c2e32527a4a9fb8dbfd57a86c046037e9adf2a8045e2e92fe49c` |
| 17 | `structure` | [Packet](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/packet.md) | 165 | `declaration-track:3b0b4e7de39e2236b0229ec6c070354626b5449d18779bfbc827ee1e51c7e494` |
| 18 | `inductive` | [Slot](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/slot.md) | 177 | `declaration-track:05e9477cd1465fd01cc82f70976f670a90884246e8eaaba1ad65564ba03729f5` |
| 19 | `abbrev` | [Labels](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/labels.md) | 184 | `declaration-track:5633484af8e28f3a7cb96ecce0b59157505154cfe31e8bc414c0831ab65460cc` |
| 20 | `def` | [bodyLinks](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/bodylinks.md) | 187 | `declaration-track:8e2cffa7a915f752e8dafae2452aab8511892a088a4035cbf615452627e498d6` |
| 21 | `def` | [close](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/close.md) | 191 | `declaration-track:a41d98c939ef48673f65457e9ba6e8d9b85d8c0c7a08916fa3b9c0881830d222` |
| 22 | `theorem` | [close_extensive](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/close-extensive.md) | 196 | `result-track:0b7f444a1767d046e15c9d577d1c5877953d9af57a26065ff9fe4800989c2ed0` |
| 23 | `theorem` | [close_monotone](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/close-monotone.md) | 203 | `result-track:722efc90637cb87fe1fe1a916e4e1ed57ad9c7b68e1e0559469bb1db2de941e7` |
| 24 | `theorem` | [close_idempotent](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/close-idempotent.md) | 213 | `result-track:ef5f5aed6f00703ad0fa90231b70951c8858aa90cc00adc6c977851c47a0ecb1` |
| 25 | `def` | [Closed](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/closed.md) | 219 | `declaration-track:a9bb1646251f7396a729144abe68a22757cc6885b3f05daa45e9850f4e50fdf5` |
| 26 | `theorem` | [close_closed](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/close-closed.md) | 222 | `result-track:73eb5e799abecfa4b85e23b02c91b3ddd0b3ae6ae7843fc43339c34de4241e92` |
| 27 | `theorem` | [close_least](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/close-least.md) | 227 | `result-track:74c893559c00d5db53c12c6c7f0fe5c8d25dddac0e78fe145e62075977fcd571` |
| 28 | `def` | [ownLabels](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/ownlabels.md) | 239 | `declaration-track:c05f5120f8ec7746b11fd3450d03b488313daf1b35892da7d700a9d6c6daabb9` |
| 29 | `def` | [effectiveLabels](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/effectivelabels.md) | 245 | `declaration-track:1b78b9dc75f568fb0c8abc47ce735d993d5b439d20c42058f43f5cdbfb92af2c` |
| 30 | `def` | [lowerAscii](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/lowerascii.md) | 251 | `declaration-track:d2112cc716d14f3d0616074f03e435809ced61e801dace28f01e7155997b0c96` |
| 31 | `def` | [digitAscii](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/digitascii.md) | 253 | `declaration-track:5eea36970ba27e241f51fb216efea57c8b31b23c26124f621042a9f6b7f93e2f` |
| 32 | `def` | [TokenValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/tokenvalid.md) | 258 | `declaration-track:ee988147fe7e2af9e3e1db685d2ce8bdce01874294a8de852cb9338d5b853f91` |
| 33 | `def` | [HashValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/hashvalid.md) | 265 | `declaration-track:d31b320e8a1317a61d0ae6d50245eb722f529a697b845c01fdc10731e3ab0294` |
| 34 | `def` | [SourceValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/sourcevalid.md) | 270 | `declaration-track:52b4b087212acc024d0b9245c67becb46925adbf9bb838ef29adb27b9ddb385a` |
| 35 | `def` | [AttributionValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/attributionvalid.md) | 275 | `declaration-track:cc1923d5621e069ba836fbdc3b5f7469707fc8a918c8f8f2228d1ed98eaa121a` |
| 36 | `def` | [HeaderValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/headervalid.md) | 280 | `declaration-track:2e71e199a91cb59bd90d846ff9bc741af5effe5d664f63e75e95b8985da74ec6` |
| 37 | `def` | [SourceConsistent](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/sourceconsistent.md) | 290 | `declaration-track:28fc946eca4df5ff43a2561328970f80df89168035ea1c541b88cec4b880f307` |
| 38 | `def` | [TextValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/textvalid.md) | 295 | `declaration-track:1e7ebab5633aad6cc65d97bff63cde29c4c557bb9833308d8eb154522d60ab3f` |
| 39 | `def` | [ContextsValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/contextsvalid.md) | 298 | `declaration-track:c49c0a632f13053e57ec15b69a6c673df4c2028afe29098c42891b60e85499fd` |
| 40 | `def` | [EnvelopeValid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/envelopevalid.md) | 304 | `declaration-track:b890bf4ecf462e0dcb707864c605a7fc6da55be920f80b755b5428755cf794e8` |
| 41 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-4.md) | 324 | `declaration-track:72440da5e708c58ab2349c8d98bd9bcd3ed1ccd0d84d5e2a0dff08d8b642169a` |
| 42 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance.md) | 328 | `declaration-track:058772759cbd18584a78f54ec29563535fdab5dbfe088db30e53577147e5e96a` |
| 43 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-6.md) | 332 | `declaration-track:792b6c710440e0cdc2d613d84e074e8840be2f9e4f59f9066c55736e3a93b914` |
| 44 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-8.md) | 336 | `declaration-track:861b945ec2a44b85a6029b4553f1288d2d7b3925114e2fe57743eb3d4fa72cbd` |
| 45 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-7.md) | 340 | `declaration-track:7b9a8fae65f66922a253d872984a1f4b130685668688e7fafca02fd8a51f01f4` |
| 46 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-2.md) | 344 | `declaration-track:43469d1d1081aec98a2c6e786ecbb8e476a01fa79bb7525dca43c7952ae026d4` |
| 47 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-9.md) | 348 | `declaration-track:c29241f8ff30edf2449e9ec4f3c697577d4049459a0722df5d7eee64ff74b1b0` |
| 48 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-3.md) | 352 | `declaration-track:6a8bd0e8e9443ac5c65a2d30d32312ebd7238301e2ba37f8ed3154dba193a188` |
| 49 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/instance-source-edition-5.md) | 356 | `declaration-track:757eaf085a632ad9e5f4b2aee02a6128eb70c9419c11cc29ce99f4c59b02fcad` |
| 50 | `def` | [checkEnvelope](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/checkenvelope.md) | 361 | `declaration-track:69ddf92a949a884af959911ae693ff4ad759db8c08a879becda7cbd60ff5da69` |
| 51 | `theorem` | [checkEnvelope_correct](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/checkenvelope-correct.md) | 384 | `result-track:9177feb90461faaf083eaaf1f54e3a0d95d9eb47b67b1635625ed0ad3f239970` |
| 52 | `def` | [projectPayload](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/projectpayload.md) | 389 | `declaration-track:b035bfc5c7d30a20b631befe18752e5db6ea0455dfbf23a4ccc443c2e0c2e0dd` |
| 53 | `def` | [projectShell](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/projectshell.md) | 395 | `declaration-track:9e1bdb5102098c4ef04124d7f04100a89aaabdd7d21d2831b7cdebc8941dd4a9` |
| 54 | `def` | [wrap](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/wrap.md) | 399 | `declaration-track:2e59942f4a0f3c6183e3eb5465cb57e99fb6d4507b98484db177d6bb75f2d3e9` |
| 55 | `theorem` | [wrap_projections](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/wrap-projections.md) | 414 | `result-track:951acd3cd1303ae9e5acc19fcaf146233f92a465968cc2e5eae004f11f7b1d73` |
| 56 | `theorem` | [wrap_payload_preserved](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/wrap-payload-preserved.md) | 420 | `result-track:7f4195c6bade5527071ba77b09ad5dfd56a0e87413800655f34d9ff1ac0d9caf` |
| 57 | `theorem` | [valid_payload_projection](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/valid-payload-projection.md) | 427 | `result-track:64845a4ab12cc28a308bd3daccac5f2734c74e1a52197415f1ad80f9bc79d5dd` |
| 58 | `theorem` | [valid_restriction_closure](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/valid-restriction-closure.md) | 434 | `result-track:38aab75d1c68df8d35cb3c4eca6a6406188b4b16054a456e709c270939bce005` |
| 59 | `theorem` | [valid_closure_least](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/valid-closure-least.md) | 441 | `result-track:9a52c76589a3ec6cb25821bf7ea7f83cf7df3f73d5bef343e4cd955fe8cc980d` |
| 60 | `theorem` | [restriction_attenuation](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/restriction-attenuation.md) | 448 | `result-track:434ef8c59288c618b77f9abbc5574365b0a3e861ed43be0528dad8603798ae32` |
| 61 | `def` | [contentHash](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/contenthash.md) | 460 | `declaration-track:6ee255813accb8de75185dbfca0dbbcd395996b077bd66af736a1a8bc1b9e9da` |
| 62 | `def` | [shellHash](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/shellhash.md) | 463 | `declaration-track:db471cd37edb0afa7134d22c1cdb5711dceec433225f20e838bd6f4c670aba7f` |
| 63 | `def` | [envelopeHash](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/envelopehash.md) | 466 | `declaration-track:93fc489b4a6942b102a741762fdf38d6abd254ea59206bf086f60ee8bf1f6611` |
| 64 | `def` | [header](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/header-source-edition-2.md) | 470 | `declaration-track:ed760a56f27759394605772941250485d5e1a2e570e7ff0c1bb966c64f0a7ac5` |
| 65 | `def` | [content](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/content.md) | 475 | `declaration-track:be0f6b3a0abd89ce4c93ff5d11e9339bfd8dfa87e3d9914363fe90c1e66af865` |
| 66 | `def` | [shell](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/shell.md) | 480 | `declaration-track:1af4eb5448b30689f933f9716232f4229888b65479d03be6e859bc3978436db5` |
| 67 | `def` | [metadata](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/metadata.md) | 486 | `declaration-track:807c50cf48eacc8ed2d2d7a179e407625ad25451ba57683a48d764ffa3664ff6` |
| 68 | `def` | [packet](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/packet-source-edition-2.md) | 489 | `declaration-track:4198b350febf7c6d7b71fbdf7d338b0ce3c97274f543e5f9d03543abb5a6c129` |
| 69 | `theorem` | [native_fixture_valid](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/native-fixture-valid.md) | 492 | `result-track:6b6d7822989efd9a6161bd54a33f82f83b2af414baf08b35bfe65b6a2163e005` |
| 70 | `theorem` | [native_fixture_accepted](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/native-fixture-accepted.md) | 494 | `result-track:44df2f901c20a8b4fca24b670d064c47854b8b39cb983ac1e88cfcde4b406317` |
| 71 | `theorem` | [native_fixture_projection](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/native-fixture-projection.md) | 497 | `result-track:1a8f04d274016c203d5ca9734a546ead29cdd01d3a055c44431ad9e4155e54c9` |
| 72 | `theorem` | [native_fixture_restrictions](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/native-fixture-restrictions.md) | 501 | `result-track:5f1bcbb26b22c9eda663358bf51124d73fe1391a56a2d632e0f7246176cdbb12` |
| 73 | `def` | [equalPayloadOccurrence](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/equalpayloadoccurrence.md) | 505 | `declaration-track:1aab976990d2d0a536e6b0fd5aa97f810a5bcd5c6bcc0558b62668492f4bf7b1` |
| 74 | `theorem` | [equal_payload_distinct_occurrences](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/equal-payload-distinct-occurrences.md) | 510 | `result-track:699803ffd6d9bc323144fa776a2835e046beb16229cc9b46ff191048f77c9da2` |
| 75 | `def` | [stripped](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/stripped.md) | 514 | `declaration-track:ad01ab09214898c968f4979f838c584b8bbfbafde8df0d6a7484fd84740b0d91` |
| 76 | `theorem` | [stripped_restrictions_rejected](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/stripped-restrictions-rejected.md) | 519 | `result-track:0366244c0838fe2f9948f0c2984c45029a06dcf23c0fc9e23f4791ab799a5abc` |
| 77 | `def` | [staleReference](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/stalereference.md) | 522 | `declaration-track:e304202b9e85afb5237029dc13a26ccda1a42362ecd6477ac8a68c884ed27b56` |
| 78 | `theorem` | [stale_reference_rejected](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/stale-reference-rejected.md) | 526 | `result-track:abc0c8ea4bdbb8a127c382526d640c52d4f9a5b2159daf6ec972e4e784dc456b` |
| 79 | `theorem` | [inherited_attribution_preserved](../../../../Combinatorics/EnvelopeNamespacedEdition2.lean/declarations/inherited-attribution-preserved.md) | 528 | `result-track:b076af486d4ec88e9040f4f2a67cc6778f85763cbb5da7353359f980031dd133` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c92b4ce7c95b91290482e85d56a92be8fd5331bd58e686affafea7fd2aca7f0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Envelope/Variant7190ea30ad8dd941cd59428719ef18232328a80739e3ea7b66fbac80ed7a6fbc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
