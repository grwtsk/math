# Verification target: Envelope Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a84db52fb905878b2f09e55103df4b3d64fbcc4",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant0804bcd7994faa33b5d633d8970c49333788c4c560f2b1385d83aaeaa6d0ca50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/index.md) · [Full source](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a84db52fb905878b2f09e55103df4b3d64fbcc4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant0804bcd7994faa33b5d633d8970c49333788c4c560f2b1385d83aaeaa6d0ca50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Envelope/Variant0804bcd7994faa33b5d633d8970c49333788c4c560f2b1385d83aaeaa6d0ca50.lean.json)

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
| 1 | `def` | [graphProfile](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/graphprofile.md) | 35 | `declaration-track:8e6a2135ef95006db4d3b0a388fdc179e6a1e4b9c456a8f6113883920e671185` |
| 2 | `def` | [recordSchema](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/recordschema.md) | 36 | `declaration-track:795fb9848235762fd073f86a0020cc0b9476d7f1e7d0c893178fc5fbf476d410` |
| 3 | `def` | [payloadSchema](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/payloadschema.md) | 37 | `declaration-track:f324115a492f9e0cf64c867449b12bd80ea93ef4d697a83cc000f4bc0a9fcfe0` |
| 4 | `def` | [restrictionPolicy](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/restrictionpolicy.md) | 38 | `declaration-track:80c5c6e86764d96179ceb05ad414671888c5ea6d721fd2ced6c7a8928d73a3dc` |
| 5 | `def` | [nativeHead](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/nativehead.md) | 40 | `declaration-track:527e3d50e1d62265fe7daed26ad44c853023d3f41541adebe85823d684a39635` |
| 6 | `def` | [nativeSourceHashes](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/nativesourcehashes.md) | 43 | `declaration-track:f6035b06e7990e5195f90378bde5b4edd2d3759e465c33c4b7854794417ac026` |
| 7 | `structure` | [SourceIdentity](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/sourceidentity.md) | 53 | `declaration-track:eb10fcecb336b6313d3ef0ddad64734738e14d69286523a26d04bb35b3e0cf03` |
| 8 | `structure` | [Attribution](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/attribution.md) | 60 | `declaration-track:a882e1866249a401e8a0d6f2e3256e6a0fa032488b0de7cf6bef32e8820a1ff6` |
| 9 | `structure` | [Restrictions](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/restrictions.md) | 65 | `declaration-track:e4bf6e80341832f36cb1e7dde0f85fb6efa7e6d64e9181955c8a76bab0a4eac9` |
| 10 | `structure` | [Header](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/header.md) | 71 | `declaration-track:1c8f0bf23b0a3c8c21329d630e04fad46c295b07e2c20a6f3983432ae8998665` |
| 11 | `structure` | [Reference](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/reference-source-edition-2.md) | 80 | `declaration-track:652ca3d4c689f88500581b9731134c6748d64437a52997d8aae6d9fc0667ecd7` |
| 12 | `def` | [reference](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/reference.md) | 86 | `declaration-track:1eaee7e2fd4f974067d1552e928d98ffcede03cae8f99b41ee8d4477e7a6a9c7` |
| 13 | `structure` | [Content](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/content.md) | 89 | `declaration-track:b4eaa6bc57c77e55942b1b806f29ae9bd0a9eed66413252ca21e280b8e9d0bba` |
| 14 | `structure` | [Contexts](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/contexts.md) | 95 | `declaration-track:74ee500952b0f12e75a241c7a47443434bd05e4543f927080d910124aac739b9` |
| 15 | `structure` | [Shell](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/shell-source-edition-2.md) | 104 | `declaration-track:a9a61cb728d4e81c9d2861eea1041b66fba5026a7dc6c4df57bc8eba00862888` |
| 16 | `structure` | [EnvelopeRecord](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/enveloperecord.md) | 109 | `declaration-track:aa6a2e184e123ce9eab40d2df2c52dadfcb43dd8ec4f7026e02da07b1359b90c` |
| 17 | `structure` | [Packet](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/packet-source-edition-2.md) | 115 | `declaration-track:b8df1dd909f6962c110efa988a5b553bbdf14b3d1e65dbe8187d4b5210eb9af6` |
| 18 | `inductive` | [Slot](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/slot.md) | 122 | `declaration-track:b830365e898837dc28b43885ac0f941e721e08178e35f821895adfa1b9238bc0` |
| 19 | `abbrev` | [Labels](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/labels.md) | 128 | `declaration-track:edc1962704f5bba65bce84fe59391e11631dfdfe90db3696c16332cf70392bb8` |
| 20 | `def` | [bodyLinks](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/bodylinks.md) | 131 | `declaration-track:9432950b31fd47e6c42ac3a052b563e9fcebe9a5cdcd5051d35e07e093a2095d` |
| 21 | `def` | [close](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/close.md) | 135 | `declaration-track:f0d05dde9eea075eb0f02872bb602ac521b6b4ee1436d108063f064099d618fb` |
| 22 | `theorem` | [close_extensive](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/close-extensive.md) | 140 | `result-track:8e20fb769955e6a84842b32e73995aad880bb535a142d9e61c384eecb1118259` |
| 23 | `theorem` | [close_monotone](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/close-monotone.md) | 147 | `result-track:0f22d856dfb56750953c9ba84bcac15f4a496869201ac8b1d31928894402e629` |
| 24 | `theorem` | [close_idempotent](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/close-idempotent.md) | 157 | `result-track:6586af5e38ebe1fb67a484cfbdde50587212a7ba57a8f32ff4229d3679796a44` |
| 25 | `def` | [Closed](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/closed.md) | 163 | `declaration-track:049efccf7e6c25dce8b44028c9f8d6e95130da66f72fa44591a2f7fb5952c4d4` |
| 26 | `theorem` | [close_closed](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/close-closed.md) | 166 | `result-track:ab605332636a5662824f0d3d57c444605c8238552aca3d2de128353c07631bdf` |
| 27 | `theorem` | [close_least](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/close-least.md) | 171 | `result-track:54a52cbd84d035ae3cadd96956d9b7e97bad73f6d8ba9fd062d01ee3c9ac34da` |
| 28 | `def` | [ownLabels](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/ownlabels.md) | 182 | `declaration-track:fbf37c542e7b0ad82db2a444a79ab3a9a2593d7f1bfefac9a00a7ec4222a6fe7` |
| 29 | `def` | [effectiveLabels](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/effectivelabels.md) | 187 | `declaration-track:a928bcb58d4c0a7e307f16badc46ed9bd495c9f3faa3329d406ed22989e3c074` |
| 30 | `def` | [lowerAscii](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/lowerascii.md) | 192 | `declaration-track:961a893cc55a201f349d1a4363152050ccb2384680e1c3d578fa86b64c003829` |
| 31 | `def` | [digitAscii](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/digitascii.md) | 193 | `declaration-track:362c3cf37f5446c71973fad3f13626b151d2255aebc07a94ebe7b79746e9b113` |
| 32 | `def` | [TokenValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/tokenvalid.md) | 195 | `declaration-track:5f9f9ba8ae5753c40aa68c8a4f78eeb3231e61b9f079cc60510404d51f444e90` |
| 33 | `def` | [HashValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/hashvalid.md) | 201 | `declaration-track:2b8f90fcd138ff4170bae8074d656f49a315eb47e40093ac638d49fb53d5b58e` |
| 34 | `def` | [SourceValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/sourcevalid.md) | 205 | `declaration-track:5b641321b92a87a91446483055f359126c3273a0fcc6b63e1c0fc02d2f74d7c7` |
| 35 | `def` | [AttributionValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/attributionvalid.md) | 209 | `declaration-track:4397103f63a25db164e5ca2a812e40810512a68958a6742d620e010587e02ee4` |
| 36 | `def` | [HeaderValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/headervalid.md) | 213 | `declaration-track:8f6035ba7d5b65381d202c628dd767c21b30953b497d62d6599abc02ab11a884` |
| 37 | `def` | [SourceConsistent](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/sourceconsistent.md) | 220 | `declaration-track:3089a85aa4e5c90904d08eea36167d4bcca59663098059419fcdfaf4a4dd49a8` |
| 38 | `def` | [TextValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/textvalid.md) | 225 | `declaration-track:301097b315a7eeae0f22d1fa82adb6ec63595dd65134fa357d36b9574ea9327f` |
| 39 | `def` | [ContextsValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/contextsvalid.md) | 227 | `declaration-track:5d412fe1ae0cae2ee72f7a90b72c88ef3bb3ddd345a6ed430685e23fd4f3a60d` |
| 40 | `def` | [EnvelopeValid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/envelopevalid.md) | 233 | `declaration-track:57a4ce34314c8457f96a94d191986371a9511fcc97be5ad185210fc573b67a06` |
| 41 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-7.md) | 253 | `declaration-track:d9ea10f6747fb5029cbba3f522bc366ae23a94150b971714ddc18b250d68f8eb` |
| 42 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-3.md) | 257 | `declaration-track:847de51d25fb95b3291ef36d097dd45c0332b77208398fe1f986cb17b96a5a5d` |
| 43 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-9.md) | 261 | `declaration-track:f919dc703fc02afb18d4e1095b7d31a4193f0b0e49622c133add5918dc12eeaa` |
| 44 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance.md) | 265 | `declaration-track:323b304eeca40dda94c91e592655e36310786147a3bd7f190bb223efe678dd85` |
| 45 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-6.md) | 269 | `declaration-track:b680ac95159c51cea06beaef1f924cf72592a46952e30e83c41da18a83d291db` |
| 46 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-8.md) | 273 | `declaration-track:ea1cb3ef0b2eb0f1b57c472d3e385ac4561b2951087e42eab8208254a437116f` |
| 47 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-2.md) | 277 | `declaration-track:502b9d9972a2e45738ed3e0a55b7ccbc6925066d38d1fe75496a344505dd97be` |
| 48 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-4.md) | 281 | `declaration-track:851585041eee33781e07abc26f6fc2186b51cc37100a365f6103b587640c5dce` |
| 49 | `instance` | [(anonymous)](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/instance-source-edition-5.md) | 285 | `declaration-track:8ed105ce2f20b76555fb5a51490d07717bc16632bd62a2dcf34d317dde1ea92b` |
| 50 | `def` | [checkEnvelope](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/checkenvelope.md) | 290 | `declaration-track:0e405c5d2904dedf045093e7bc17cc94175ef5e1038eb1a95daa4b3a52b4b9d5` |
| 51 | `theorem` | [checkEnvelope_correct](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/checkenvelope-correct.md) | 313 | `result-track:a99cabaa11bd8dbf2c29bc1e9cefb849ebd0ac0b8fbf481999ca2d7c16714c4f` |
| 52 | `def` | [projectPayload](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/projectpayload.md) | 318 | `declaration-track:a8e06992656eeffc77c51101e6b07d7d9260b33e3948473520b58af725576e6e` |
| 53 | `def` | [projectShell](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/projectshell.md) | 321 | `declaration-track:6df340fd8c02647ebdea56c0a6b5afd34e17c16b6af34beccde35603be349b80` |
| 54 | `def` | [wrap](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/wrap.md) | 325 | `declaration-track:46bd16343200f33240ce8d1638645f326026025e983d6904133611f0adaa0e74` |
| 55 | `theorem` | [wrap_projections](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/wrap-projections.md) | 340 | `result-track:2f620c98ddea47544e894166383f3100ce64c2a6e44f20b0b3216ce50a954377` |
| 56 | `theorem` | [wrap_payload_preserved](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/wrap-payload-preserved.md) | 346 | `result-track:a545832be0ba594b69cd9e1bcfa55858ee3ed9d1f286dcc343605b021dcede17` |
| 57 | `theorem` | [valid_payload_projection](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/valid-payload-projection.md) | 353 | `result-track:249268fd8f5050a734964bf3aef864765f6dec0b7df07461e62f06a7f6ba9f67` |
| 58 | `theorem` | [valid_restriction_closure](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/valid-restriction-closure.md) | 360 | `result-track:0fb9b5cdab622275d9b529d447dc21b134504129544b812c7024c3108409a19a` |
| 59 | `theorem` | [valid_closure_least](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/valid-closure-least.md) | 367 | `result-track:69e22780193d8e36da346e1a1758c0b6b7166d2b4472cb137ea97ae151444ce3` |
| 60 | `theorem` | [restriction_attenuation](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/restriction-attenuation.md) | 374 | `result-track:421e841a7d6da9f1fcb6e16782e94e9da831609abc49418c0de364be801341f6` |
| 61 | `def` | [contentHash](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/contenthash.md) | 385 | `declaration-track:7f8e0f977e51787e22ecdced26d236e813089bb3305807244644a788e0a2df9e` |
| 62 | `def` | [shellHash](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/shellhash.md) | 387 | `declaration-track:f08db76adc00eef46b0677535a5ba266cf0d3d4a461e1788b325254461b7760b` |
| 63 | `def` | [envelopeHash](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/envelopehash.md) | 389 | `declaration-track:112add85b2a540a272543c67630f8fc24efb2dde1e29697ca7c883c34719cb93` |
| 64 | `def` | [header](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/header-source-edition-2.md) | 392 | `declaration-track:a364ae7e124a98b31958b5dd090b8b0c9647190959153d095efb01e0dd865c2b` |
| 65 | `def` | [content](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/content-source-edition-2.md) | 396 | `declaration-track:cf1df0d30cb3ccfcbba18b8e8b5af9af580df2590dcef178d89ddd6a97e78c1f` |
| 66 | `def` | [shell](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/shell.md) | 400 | `declaration-track:2a0ddda157ecd7e4bdafcc26a1303068993f1d30a71f28afeb3323931f3db491` |
| 67 | `def` | [metadata](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/metadata.md) | 405 | `declaration-track:420bcd9aa14d1001471f0b6fe8fac89cacb6e053d8005ef24e052ae64e9f110e` |
| 68 | `def` | [packet](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/packet.md) | 407 | `declaration-track:841dcf1e7f448a12e36c76698ba85ef56ccedf31c2c78b163e0f8c18d4c8d812` |
| 69 | `theorem` | [native_fixture_valid](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/native-fixture-valid.md) | 410 | `result-track:9c318fabcc2b74a0037fae34d1f44b53f09af5466dcf85a8b2a22acfea2c7ad5` |
| 70 | `theorem` | [native_fixture_accepted](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/native-fixture-accepted.md) | 412 | `result-track:440be28cfb62510e984cc196c59283890c5f3d7095e171898f9a55c8c1da48b8` |
| 71 | `theorem` | [native_fixture_projection](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/native-fixture-projection.md) | 415 | `result-track:8970a980cae1f983cee14f945a5efe3d38a1847641ac407b60c74d22cabdaf82` |
| 72 | `theorem` | [native_fixture_restrictions](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/native-fixture-restrictions.md) | 419 | `result-track:2bd0a250bb232e97b5f5c9d0da93475a93f1e823762e7414bb63928a687bc897` |
| 73 | `def` | [equalPayloadOccurrence](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/equalpayloadoccurrence.md) | 423 | `declaration-track:117a295f0f9c8292a5847e666db1295975bb95d6f975cb7daff789b6c0904e2d` |
| 74 | `theorem` | [equal_payload_distinct_occurrences](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/equal-payload-distinct-occurrences.md) | 428 | `result-track:10df2fa400b3c7b40b3cc487088a1fb82967a08312cc6486bac8576975f75ea4` |
| 75 | `def` | [stripped](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/stripped.md) | 431 | `declaration-track:b89df6d6f14d08173493334462749a4c5a2d495863c9d87fec0c28a840dc4d11` |
| 76 | `theorem` | [stripped_restrictions_rejected](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/stripped-restrictions-rejected.md) | 436 | `result-track:9caed9a8c38a3ea2663cf541a651abaa29613722dbdbb45e8abc0357162d0f4f` |
| 77 | `def` | [staleReference](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/stalereference.md) | 438 | `declaration-track:d5df4dfed757c2f01bf67c0cfdc904f67098046f0d0071e1d732e25582a22700` |
| 78 | `theorem` | [stale_reference_rejected](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/stale-reference-rejected.md) | 442 | `result-track:1bafae3841559984085f7852bd45dd5692822497d93d21af3a9290a1c8170e1c` |
| 79 | `theorem` | [inherited_attribution_preserved](../../../../Combinatorics/EnvelopeNamespacedEdition1.lean/declarations/inherited-attribution-preserved.md) | 444 | `result-track:7d46f85f11ec77eb6924e14fb7e2a285c16fdf09f126ff6b95fb54d137abaaf2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=656b534963a28af49a7cf44cfd866ea29a2b4e68dcfe082fa6bc25839a5ccc9c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variant0804bcd7994faa33b5d633d8970c49333788c4c560f2b1385d83aaeaa6d0ca50.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Envelope/Variant0804bcd7994faa33b5d633d8970c49333788c4c560f2b1385d83aaeaa6d0ca50.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
