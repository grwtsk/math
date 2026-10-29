# Verification target: Prime Bounded Continuation Namespaced Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c678628ba0919f8548a7b1cc7b256f7c012445a",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/index.md) · [Full source](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c678628ba0919f8548a7b1cc7b256f7c012445a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean.json)

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
| 1 | `structure` | [PrimeRadix](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/primeradix.md) | 41 | `declaration-track:e4749cd4dbb8232f12f4208a2eedb83993225359c63b364af050ad5f24887357` |
| 2 | `theorem` | [pos](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/pos.md) | 48 | `result-track:29e9a963f9e695627e03589164709089312f3d17c112a3c9f075c9b81198a1af` |
| 3 | `abbrev` | [BoundedPrimeDigit](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/boundedprimedigit.md) | 55 | `declaration-track:95d7de229302389db9ce8a11ace1ea8428c956948a373d1824fcaa6e323916c2` |
| 4 | `def` | [lap](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/lap.md) | 59 | `declaration-track:bbbfecb3924f14baca5a5ae7cf420e879805dc8f3f567d051fd24390d8224283` |
| 5 | `def` | [residue](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/residue.md) | 64 | `declaration-track:b6ca941b9fb72f62a777697bfbda9caef1c95cda295a002ebc5bd56e3932eea7` |
| 6 | `theorem` | [euclidean_lap_residue](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/euclidean-lap-residue.md) | 69 | `result-track:25e38c0f4a95cf2357f4bb5153fd44d66ca5ee783a0fce78527e961d381be833` |
| 7 | `theorem` | [residue_lt](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/residue-lt.md) | 75 | `result-track:df55c3788581549b6e8f136a583d05da4ec4b8a584b2469db7a6bac49a7bd08f` |
| 8 | `theorem` | [lap_residue_unique](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/lap-residue-unique.md) | 84 | `result-track:c6f606a9539418dad96d03d63a05a56b5fecb9d9b2eec6ec5b127e1b79258537` |
| 9 | `structure` | [PrimeCoordinate](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/primecoordinate.md) | 111 | `declaration-track:cb3dc2077fa53b133abb0a1f541c12a731d7bf9a9ebc2ee5c0e60cc181913bd3` |
| 10 | `def` | [ofExponent](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/ofexponent.md) | 121 | `declaration-track:8f82be64f105157e892539545a22709837f2aefda4325394bb860d2401255a09` |
| 11 | `theorem` | [canonical](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/canonical.md) | 129 | `result-track:670705b4ac95064cc9a4e6ec24ed2de784ba7fa297ab1949f3a10c6f7b5d0630` |
| 12 | `def` | [absoluteExponent](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/absoluteexponent.md) | 141 | `declaration-track:90ced3a2d7a113a7277f077fb88e3548a415c0d3e9d222310a25cf19abe1db7f` |
| 13 | `theorem` | [carry_preserves_absolute_exponent](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/carry-preserves-absolute-exponent.md) | 149 | `result-track:70ae81cd9ada93799256040d917d74b6154fc54b6ba8352ef372d24023058a75` |
| 14 | `theorem` | [boundary_increment_is_carry](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/boundary-increment-is-carry.md) | 156 | `result-track:c06b1496ed123b042c06d3c8ed3d40dc6b5d4ba2b85c8c10d92082baa9fff8e4` |
| 15 | `inductive` | [BoundedCell](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/boundedcell.md) | 175 | `declaration-track:038d55f16eea632cc2231db2ee9007772d2d88fbf1c1ac1602a81fa7d5463db4` |
| 16 | `def` | [cellCapacity](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/cellcapacity.md) | 182 | `declaration-track:b9ef0b64f6b57a47dcdd84db81b4bfb01be371f0858594ef65c1b3065f515d71` |
| 17 | `theorem` | [cellCapacity_eq_prod](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/cellcapacity-eq-prod.md) | 187 | `result-track:760f93bd776d04502c7fb51d321f24ce49b50f08bd753e02297da6e4f91ba6a7` |
| 18 | `def` | [splitCellEquiv](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/splitcellequiv.md) | 196 | `declaration-track:5a59646d13ea87d0d9741d82a59eb54486f6efa5d3935e103ebfee178461dc21` |
| 19 | `def` | [mixedRadixEquiv](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/mixedradixequiv.md) | 210 | `declaration-track:738d05c939efc513f625788cefa6d38d358c58afa89a4a6f02d2ae24bd79ff8a` |
| 20 | `def` | [encode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/encode.md) | 230 | `declaration-track:5c28244b438ac188f5ed1a7a36e513ff445b6fbe3d44292e479d7d909b6fc0a2` |
| 21 | `def` | [decode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/decode.md) | 236 | `declaration-track:67e12f04dcf77def9c24726eef2b33f105f05f66789f2ea209b9007427efdc92` |
| 22 | `def` | [rank](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/rank.md) | 242 | `declaration-track:9921099f1a3bb4373a2a14491d3b22083d9cde9d84f4137fa69015de6c66409a` |
| 23 | `theorem` | [rank_nil](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/rank-nil.md) | 246 | `result-track:4fc754cab5986c951f22dee54c5b5cafef494e7b8cd60a7ae59e6efb0ec010c2` |
| 24 | `theorem` | [rank_cons](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/rank-cons.md) | 250 | `result-track:a314fe2097bc04cef44eb5937922e81d78b168fb38681c0b0c9b184497912083` |
| 25 | `theorem` | [rank_lt_capacity](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/rank-lt-capacity.md) | 257 | `result-track:602a5f8281b65d8382d9985ea825e9bdac215808e1dbd1f84c7826889a9b6ad1` |
| 26 | `theorem` | [decode_encode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/decode-encode.md) | 263 | `result-track:bbb892a27915544841a24076b61b1f2b696a4d397c007a747d8a0c50ffee58a6` |
| 27 | `theorem` | [encode_decode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/encode-decode.md) | 269 | `result-track:a8b2926e68ed7333c97c635573cedcfedd0039a4d69f5d93d50d614f35ff7799` |
| 28 | `theorem` | [rank_decode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/rank-decode.md) | 275 | `result-track:148d9ccccda7eaa9a86c324e0d759e303151acede6b2289fb6dbf991d8308339` |
| 29 | `def` | [finiteCrtEquiv](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/finitecrtequiv.md) | 289 | `declaration-track:c84412194204e603011fc03b6989f83311b50687b921420a407ce74d51c1a48f` |
| 30 | `def` | [finiteCrtEncode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/finitecrtencode.md) | 296 | `declaration-track:4db5e25db43209ee8681b0625547285c6fe41715a616e5610fe5b7e3460e4e0d` |
| 31 | `def` | [finiteCrtDecode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/finitecrtdecode.md) | 303 | `declaration-track:0166e99f2cbad91158743ecc30a21e48ca33260acbf24d734f2a31256a092c81` |
| 32 | `theorem` | [finiteCrt_decode_encode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/finitecrt-decode-encode.md) | 310 | `result-track:085d8637072bf72d863b74b3a7e3ea50f9ba03308e50742589a435c522184d04` |
| 33 | `theorem` | [finiteCrt_encode_decode](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/finitecrt-encode-decode.md) | 319 | `result-track:7cb862684e27696943f0ed35562df6a9decf35845eb0b2b9c4d5247f7802841c` |
| 34 | `theorem` | [finiteCrt_encode_add](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/finitecrt-encode-add.md) | 329 | `result-track:46ead9d88660011249a6aa2c39aa028fe9483797f5edd743a5d501352dc62e16` |
| 35 | `inductive` | [ExponentKind](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/exponentkind.md) | 340 | `declaration-track:b4b1ed5aa5d7ddac7b0665ae9012c2911353d08abac4173b06dbd609c351fa87` |
| 36 | `structure` | [RequestExponentMetadata](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/requestexponentmetadata.md) | 347 | `declaration-track:ea5fdbbfde55e3f9bbc8468a536de9cc462a5c8055b19db1a2298ad4c811f830` |
| 37 | `structure` | [TorsionPowerMetadata](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/torsionpowermetadata.md) | 352 | `declaration-track:39c43f15bcb555c6cc7586982ef711a5cb47e44eb775f0b45096e561c2fd6bd8` |
| 38 | `def` | [RequestExponentMetadata.kind](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/requestexponentmetadata-kind.md) | 360 | `declaration-track:98710efdc6a8052d071dcd15e1446560a744b9521a0ff3bf0b553f74551de9b6` |
| 39 | `def` | [TorsionPowerMetadata.kind](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/torsionpowermetadata-kind.md) | 365 | `declaration-track:f4c37449ed65aa47d99429805d67a8f44ccec929da03add7edfb110cff504c5a` |
| 40 | `theorem` | [request_exponent_kind_ne_torsion_power](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/request-exponent-kind-ne-torsion-power.md) | 369 | `result-track:803726d9630a67c32eaad4012416a53b983658f0fbd983efa65e96426f1f457a` |
| 41 | `inductive` | [Authority](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/authority.md) | 376 | `declaration-track:245efbdbc7a5ce28ed8673eae9a799583689408abdd4f5c3881dea7b98882002` |
| 42 | `structure` | [Authorized](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/authorized.md) | 385 | `declaration-track:e20d9a5248b2ed65698e7d962e06134552c365446432048bdfb7789f223857e6` |
| 43 | `def` | [modelProposal](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/modelproposal.md) | 390 | `declaration-track:98b5996f5b1c8ffaee672494b0fc7cb488fa844c43a5624e996ec1ad379d1404` |
| 44 | `def` | [deterministicClassify](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/deterministicclassify.md) | 399 | `declaration-track:bc31db1f909bc45d4fa4e04bc47acd11032b7312bc91ecbf4c5c8d8e49716e0b` |
| 45 | `def` | [authorityOf](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/authorityof.md) | 405 | `declaration-track:d11555a5f064c0d4af880acf8ab4ea1debda550cf0686cf90eb5c936f5d50659` |
| 46 | `theorem` | [deterministic_classification_preserves_proposal_authority](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/deterministic-classification-preserves-proposal-authority.md) | 410 | `result-track:719761ddbeccd144f37fa0114f111bb9eabbe8eb40bdd7eddbef974dca78e684` |
| 47 | `theorem` | [deterministic_classification_not_theorem_authority](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/deterministic-classification-not-theorem-authority.md) | 418 | `result-track:767a28d6062f15ba63e44c824e92d46e9b5362098eb7db4044ca1ea88d8341df` |
| 48 | `structure` | [LedgerCoordinate](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/ledgercoordinate.md) | 429 | `declaration-track:22e39f52cd55805dacabd91083ac9c3e668255e5d6144cf2ddb9cf33dde73247` |
| 49 | `structure` | [LedgerExponentState](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/ledgerexponentstate.md) | 436 | `declaration-track:1f8ff31d1afdd5b6b6d2b030ef593a79b2b37fe17ecc77c1f57a5385f67be367` |
| 50 | `def` | [sparseNonzeroCoordinateIdentity](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/sparsenonzerocoordinateidentity.md) | 443 | `declaration-track:28fa59f6766fda58d4dc9d5d3b11c54af92ba16dbdbba7ca9e34b321083fb25a` |
| 51 | `def` | [appendZeroExponent](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/appendzeroexponent.md) | 449 | `declaration-track:d8264c0022ac901940b0201919bdab28cbd94430cba8671b055b1a1382ffa32d` |
| 52 | `theorem` | [append_zero_preserves_sparse_identity](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/append-zero-preserves-sparse-identity.md) | 456 | `result-track:21cc24112e608415ffd4a2d9cc163c802d3ded6e8e4c08cacfd0563de713ce80` |
| 53 | `def` | [ledgerPrimes](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/ledgerprimes.md) | 463 | `declaration-track:a3f9cde8e40baae61adbc01ce23022e437e88b520381f0419f20d3a352ca6839` |
| 54 | `structure` | [ExternalPrimeBreach](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/externalprimebreach.md) | 468 | `declaration-track:2be0fb1ca8340ac40d0b1d94fd0aafe34ae93218709878d8b392bf66e1cb0b5d` |
| 55 | `theorem` | [external_breach_names_absent_prime](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/external-breach-names-absent-prime.md) | 474 | `result-track:5ae574ea645f16b7de2572f78c9fb45bf0c85bb76319d9f96e62a6e6b411328b` |
| 56 | `inductive` | [HomologyPrecision](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/homologyprecision.md) | 483 | `declaration-track:6404e07430fd473c6f5eb70a67dc6ce67da861d29bbe89dda7902240da1cca43` |
| 57 | `inductive` | [ExactPowerAuthority](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/exactpowerauthority.md) | 493 | `declaration-track:cfd777b08ea923c429ab63c9525a7f5e06247844070be5213ac9e7984d684167` |
| 58 | `theorem` | [field_only_cannot_yield_exact_power_authority](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/field-only-cannot-yield-exact-power-authority.md) | 498 | `result-track:020008508aad9d493e224ca1e9fc78edf1633bfe67cb89dad5e11a9ce088797f` |
| 59 | `theorem` | [no_exact_power_from_field_only](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/no-exact-power-from-field-only.md) | 503 | `result-track:0be43d1387e77ada49e8c2c2179fa4165a36a4e3f46a83591d2a37cd11243bbe` |
| 60 | `structure` | [CertifiedTorsionFactor](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/certifiedtorsionfactor.md) | 509 | `declaration-track:64baada4157b9b367919fb5ee56044f4500d55a3c83f2e2bc5a912c65b1a89e9` |
| 61 | `structure` | [CertifiedTorsionPacket](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/certifiedtorsionpacket.md) | 521 | `declaration-track:5e7df7b61506e03ed73fcac493644179e7d10431695ae8e1c35619f098d778f1` |
| 62 | `structure` | [CertifiedTorsionFactorReference](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/certifiedtorsionfactorreference.md) | 529 | `declaration-track:3008a528605f7d018d5f2f69161f1fc3c6e658957dd06d5337090ebd7f48a54e` |
| 63 | `def` | [resolveTorsionFactor](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/resolvetorsionfactor.md) | 533 | `declaration-track:0ca3631b2c452e6b124d657fd94c2087fbc5db93e314006d60ef0f2a9b5f0118` |
| 64 | `theorem` | [every_certified_torsion_reference_resolves](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/every-certified-torsion-reference-resolves.md) | 539 | `result-track:ec38d5edc94f835d2437a4b474260cf8e987623fb64eb21a832dd4edeeaf4a30` |
| 65 | `theorem` | [resolved_torsion_reference_has_packet_degree](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/resolved-torsion-reference-has-packet-degree.md) | 546 | `result-track:b2ce8b0f9c76a9e80b998e4e225d41d12ae3ec3864d3b20eb4e5959919e29ef0` |
| 66 | `def` | [firstFiveRadices](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/firstfiveradices.md) | 556 | `declaration-track:113fd514f1397a0a72db02ee214b2a54583bfc66667d07d053ce6fccec41540b` |
| 67 | `theorem` | [firstFive_cell_capacity](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/firstfive-cell-capacity.md) | 560 | `result-track:ad344b24dc82528ce74dfa96ce519b078e6a4380aae994d4abc81041406d9f60` |
| 68 | `def` | [twelveBoundedCell](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/twelveboundedcell.md) | 566 | `declaration-track:467eab532c7f13ea61ae8a5f2f03b7d953722b723e8dbf79476a0b261146b98a` |
| 69 | `theorem` | [twelve_bounded_cell_ordinal](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/twelve-bounded-cell-ordinal.md) | 574 | `result-track:1339f2d4b56aebb76d93ae6149cb22c9ec083310809e15b4de78a73e73e05308` |
| 70 | `def` | [primeTwo](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/primetwo.md) | 579 | `declaration-track:baceb2652a0ecb97349080eb7f72d047047e986dd4e1d0ddf7928cd6fac49258` |
| 71 | `theorem` | [twelve_two_coordinate_lap_residue](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/twelve-two-coordinate-lap-residue.md) | 583 | `result-track:32d058494986e341460d4c38ad798da28ba95df9ae2fdc53f9a96afc5153f0b7` |
| 72 | `theorem` | [twelve_cell_round_trip](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/twelve-cell-round-trip.md) | 589 | `result-track:53cf06ef0cf15d006507695ba4f401e808d045fab52e6a9e93da85fc5eaba571` |
| 73 | `def` | [p5RadixFamily](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/p5radixfamily.md) | 601 | `declaration-track:f075b93f5f6a2db2dcf97ca2aaaf90ecd6f51c818ed7a6f8892ad87a2fd68514` |
| 74 | `theorem` | [p5Radices_pairwise_coprime](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/p5radices-pairwise-coprime.md) | 605 | `result-track:e35e756951821943abd4ff4403103e771c54924a94e99c5d8525147f10807663` |
| 75 | `theorem` | [p5_radix_product](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/p5-radix-product.md) | 612 | `result-track:bdc2c0e6444f72eb451f4cd8f5fa583ee4a63afcaaa7b6968015deea4697aeea` |
| 76 | `def` | [p5NodeTwelveResidues](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/p5nodetwelveresidues.md) | 617 | `declaration-track:7c23704a45361d79c13cf1e79e100270d31d1b3bb4dec642ee0cf55e8bd4b635` |
| 77 | `def` | [p5CrtRepresentative](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/p5crtrepresentative.md) | 622 | `declaration-track:7e66324de4864e61ecc376a7235b3abe47be9d262d5bec3441ff4fc4fac77291` |
| 78 | `def` | [p5DecodeRepresentative](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/p5decoderepresentative.md) | 627 | `declaration-track:5344d981c70ac4c5943e0da6d67dce5e80d742cb91f9ea57a05ab9448995c8be` |
| 79 | `theorem` | [node_twelve_p5_crt_certificate](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/node-twelve-p5-crt-certificate.md) | 631 | `result-track:9e9b35232812c6ab3e21ee5e49abc7ed4343ff86dd93bb5f9fd844603e4b629f` |
| 80 | `theorem` | [node_twelve_p5_crt_decodes](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/node-twelve-p5-crt-decodes.md) | 637 | `result-track:07778bfece600a05cb1ffd198d7485759c81e6f915a4273037b0417d3baf7700` |
| 81 | `def` | [nodeTwelveP5Ledger](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/nodetwelvep5ledger.md) | 643 | `declaration-track:9e459d7bdf69b44aba1caf414b9e3bc61a53288b33ea8ec45e3455005f1904af` |
| 82 | `def` | [nodeTwelveThirteenBreach](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/nodetwelvethirteenbreach.md) | 648 | `declaration-track:dc8673d93f3c5d58b6bc27f3b95d45bf9d02d184a80982bdd93d5069dc73589f` |
| 83 | `theorem` | [node_twelve_extension_by_thirteen_preserves_sparse_identity](../../../../NumberTheory/PrimeBoundedContinuationNamespacedPublicEdition1.lean/declarations/node-twelve-extension-by-thirteen-preserves-sparse-identity.md) | 655 | `result-track:cc97e2a546f689d337a3f5a7ca8bb7f2f1a0586858c829b46a9408d7765ed136` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a26703336211a255be617504723a6a98913ff074401581c4d0a403847c0238cd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
