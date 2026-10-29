# Verification target: Prime Bounded Continuation Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "928984746240acd6f1ed0536abf2316d553344ee",
  "lexical_observation_count": 83,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/index.md) · [Full source](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `928984746240acd6f1ed0536abf2316d553344ee`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean.json)

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
| 1 | `structure` | [PrimeRadix](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/primeradix.md) | 33 | `declaration-track:1c0c433d8179be1e804d2f1af367aae58023d25e452ee3350c71c9ac9dd3edc0` |
| 2 | `theorem` | [pos](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/pos.md) | 40 | `result-track:5d9024f98720e0396d549553f54121916dcedb8ae15cc1089b7fa827d5798ade` |
| 3 | `abbrev` | [BoundedPrimeDigit](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/boundedprimedigit.md) | 47 | `declaration-track:30b3d23a891823bed768b762b33f565036291f1873a45bba5b69a0fd0c616fdc` |
| 4 | `def` | [lap](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/lap.md) | 51 | `declaration-track:771772209873d501612f76590ad9398fc47bb40cc70728f6e5d2470c9ebe232e` |
| 5 | `def` | [residue](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/residue.md) | 56 | `declaration-track:31c59a09ee1b3a078a77aafa776bca462dadd1273e6705380c620d1a3519368e` |
| 6 | `theorem` | [euclidean_lap_residue](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/euclidean-lap-residue.md) | 61 | `result-track:081e3cc1e3f4568eebdce5d4c96181136142ef29ff2cabd2ba9295e724243c39` |
| 7 | `theorem` | [residue_lt](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/residue-lt.md) | 67 | `result-track:12eac31086a59ac0c9c689ccb7237eededa2a3949a9cdac721d305447d0ae804` |
| 8 | `theorem` | [lap_residue_unique](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/lap-residue-unique.md) | 76 | `result-track:312bdc6025a22c715dc69f7eab2d2e44c4ce6fbb7d91a2b10dd86bb886271e27` |
| 9 | `structure` | [PrimeCoordinate](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/primecoordinate.md) | 103 | `declaration-track:2d37c614f0ffbff7b5cc26fca80e7a0494253aa2df42456684a56ff45614ef0b` |
| 10 | `def` | [ofExponent](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/ofexponent.md) | 113 | `declaration-track:ed487c0cd9541051f6e582e6e92a738b3cfe4a5c8d50a1087bc69368ddeeb343` |
| 11 | `theorem` | [canonical](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/canonical.md) | 121 | `result-track:88b77f729288034d6390e91f3c31f641032936a44a24dfe26693b6fdac289b59` |
| 12 | `def` | [absoluteExponent](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/absoluteexponent.md) | 133 | `declaration-track:d1be7ea0532a070e43d46c872b2c1839cbc4916766976071090c25425885acfc` |
| 13 | `theorem` | [carry_preserves_absolute_exponent](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/carry-preserves-absolute-exponent.md) | 141 | `result-track:07d8f95a3f7a3beb592ca3fc2e1fbb1833161aaae8ef89cb3f6ee6062fc2649d` |
| 14 | `theorem` | [boundary_increment_is_carry](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/boundary-increment-is-carry.md) | 148 | `result-track:5a340835247d68bb2ade0f9380512431caa76ff640279b147316a0083971a8d8` |
| 15 | `inductive` | [BoundedCell](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/boundedcell.md) | 167 | `declaration-track:b7a8187942c970b20e1f8d0847b9e8b016ccbca5feecd02d795521840104dcf0` |
| 16 | `def` | [cellCapacity](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/cellcapacity.md) | 174 | `declaration-track:e1189895ebf53d7ac347b5d06fe840e09124b21194073ca63b96af7d400652eb` |
| 17 | `theorem` | [cellCapacity_eq_prod](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/cellcapacity-eq-prod.md) | 179 | `result-track:1ef1f4d9731e8ef67704f3f87093c854eeda2e6e524ba721330c27d62904dfb8` |
| 18 | `def` | [splitCellEquiv](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/splitcellequiv.md) | 188 | `declaration-track:47bccd0ee72151c62b0cac4f95a85895bc03c31dc64af0b3baa96d1513322b65` |
| 19 | `def` | [mixedRadixEquiv](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/mixedradixequiv.md) | 202 | `declaration-track:3c867c36c63ecbbcf29c30a0b13240c18d08a744e56b9c00fb7dffcec7bcd2a3` |
| 20 | `def` | [encode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/encode.md) | 222 | `declaration-track:cb8d5f4d2d14cbcc75609254f2da499d264ed3b170a441ad6aa8063be69941aa` |
| 21 | `def` | [decode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/decode.md) | 228 | `declaration-track:faba18ef3fc8129dd2d3342ba7ec9cebb971363f0ad14979fdda5fa41e0ce02e` |
| 22 | `def` | [rank](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/rank.md) | 234 | `declaration-track:7cc44a6aba36e1a79f7aa86c25a3822fda0628f8ed4d8d29c2ebf48a441caa96` |
| 23 | `theorem` | [rank_nil](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/rank-nil.md) | 238 | `result-track:318ce30f354081e7d4b83e50bc900cb52e354d3683e67f8406367b113b96ab8d` |
| 24 | `theorem` | [rank_cons](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/rank-cons.md) | 242 | `result-track:de8326251b5b7fcebb609f3c8213e10743292680e6b3dc0dc9c8bf7cf452003e` |
| 25 | `theorem` | [rank_lt_capacity](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/rank-lt-capacity.md) | 249 | `result-track:c8de114466700768ea9e1c09e4c173340531b59e4082721399af161feb4d9dac` |
| 26 | `theorem` | [decode_encode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/decode-encode.md) | 255 | `result-track:83dc06b3160fcfb88db87f64042aeedc48ec3a8c6d581d0db03051e77ed7428a` |
| 27 | `theorem` | [encode_decode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/encode-decode.md) | 261 | `result-track:61b20652d70760d5e583220521ce33011fc52266194f6697a9efaceb836c5f79` |
| 28 | `theorem` | [rank_decode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/rank-decode.md) | 267 | `result-track:d859297c3e896fbb2ba796b78cdfb867c46ec9f80ad1dcf87e483b5d4ebace14` |
| 29 | `def` | [finiteCrtEquiv](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/finitecrtequiv.md) | 281 | `declaration-track:baae90f8a1ac76390a4e66952597372488a34381f410a065e608581639b132c0` |
| 30 | `def` | [finiteCrtEncode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/finitecrtencode.md) | 288 | `declaration-track:7b80babcd1bf79f68489d687dec61dbc2c771fc79b1f929988529480563d2e8e` |
| 31 | `def` | [finiteCrtDecode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/finitecrtdecode.md) | 295 | `declaration-track:0d17a9f4f31af71241b2853b72aa3d5b95a53bc95feabcc03ef67dd6ec198d07` |
| 32 | `theorem` | [finiteCrt_decode_encode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/finitecrt-decode-encode.md) | 302 | `result-track:5b0dfad4ea0e7619a24399784d5527ae8c84bfdee5c7c9d506c5fe73f2c28154` |
| 33 | `theorem` | [finiteCrt_encode_decode](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/finitecrt-encode-decode.md) | 311 | `result-track:d2b9928e2303c15dc686ec4e291b5383155a85cae33a191f74538266d7c49afc` |
| 34 | `theorem` | [finiteCrt_encode_add](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/finitecrt-encode-add.md) | 321 | `result-track:7bed42cdc244d1beed4cd84ba83def1278bcb6333918ff1a7e0743318d42422d` |
| 35 | `inductive` | [ExponentKind](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/exponentkind.md) | 332 | `declaration-track:7291cc329a52f4857c3070a755aebd8a7735310fa068df4397350d72be4a2475` |
| 36 | `structure` | [RequestExponentMetadata](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/requestexponentmetadata.md) | 339 | `declaration-track:50f3406d7295d7202b70b2944ac8b87d86fecbf8596d09e1ccf97e225e2e1d3c` |
| 37 | `structure` | [TorsionPowerMetadata](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/torsionpowermetadata.md) | 344 | `declaration-track:eb55196733126644dbd7f3a450fba44272d37c7a19f52c003af634769c5d75db` |
| 38 | `def` | [RequestExponentMetadata.kind](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/requestexponentmetadata-kind.md) | 352 | `declaration-track:f801cb391ac7ff72634c976114fb236a4cb29d9870a3776634057a6a6f01d53f` |
| 39 | `def` | [TorsionPowerMetadata.kind](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/torsionpowermetadata-kind.md) | 357 | `declaration-track:c22e381bd911cc5f56bcaa1e8219b5e7a05113a06bfdad34580b1cab93ac72ae` |
| 40 | `theorem` | [request_exponent_kind_ne_torsion_power](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/request-exponent-kind-ne-torsion-power.md) | 361 | `result-track:e3e8aa1ea423de516345051723332831828f47dc85992315b709972d4007fe39` |
| 41 | `inductive` | [Authority](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/authority.md) | 368 | `declaration-track:dee8276c321e9652f086f266392f54e47933e4f7e99a862003c834171e4679c7` |
| 42 | `structure` | [Authorized](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/authorized.md) | 377 | `declaration-track:4976090ae9f015185684436b703df029b795301c3de65cbfa2b57f6187ea02c2` |
| 43 | `def` | [modelProposal](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/modelproposal.md) | 382 | `declaration-track:161d683e5e4674ed52782d4cffe8c4759692487bbd7acb208d41422b9d233d08` |
| 44 | `def` | [deterministicClassify](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/deterministicclassify.md) | 391 | `declaration-track:02af3b855155bae66a0273e48700bf0e0d20de164d0c38eb1bdd0dd0068d3f71` |
| 45 | `def` | [authorityOf](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/authorityof.md) | 397 | `declaration-track:b8f73bf73941e95cee15af1621387e5269c16d636332e9c4b685b191d27ae91f` |
| 46 | `theorem` | [deterministic_classification_preserves_proposal_authority](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/deterministic-classification-preserves-proposal-authority.md) | 402 | `result-track:2d160fc277262b27dc3f2bbc44369d6bfb7aa36ca0e3059fa18947388a3b12c3` |
| 47 | `theorem` | [deterministic_classification_not_theorem_authority](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/deterministic-classification-not-theorem-authority.md) | 410 | `result-track:90d154ad3eeecd1ae25f5a01f052f0a08236c533623649a6b301415379ddcf19` |
| 48 | `structure` | [LedgerCoordinate](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/ledgercoordinate.md) | 421 | `declaration-track:d3ae9bba827b7d06abcc13ff3c812a30404ae89abbc0f1876b2d0ffd90d02979` |
| 49 | `structure` | [LedgerExponentState](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/ledgerexponentstate.md) | 428 | `declaration-track:e3ab1e702f253d97ce40943b455a6784e7a5e9058a72469b67bc2992a1f2d1e9` |
| 50 | `def` | [sparseNonzeroCoordinateIdentity](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/sparsenonzerocoordinateidentity.md) | 435 | `declaration-track:1c3093b6ca9771f71efaa4ea1424a88c42ecb50d3d55e331bfb7767126e3a130` |
| 51 | `def` | [appendZeroExponent](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/appendzeroexponent.md) | 441 | `declaration-track:f173fdaa6d4a0e98ad25bfb65e36c73b3c0729bc0767e73d47b26ddd9e0fe1b3` |
| 52 | `theorem` | [append_zero_preserves_sparse_identity](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/append-zero-preserves-sparse-identity.md) | 448 | `result-track:b2112db20687c9993c23bbb4ee0a880a37dd60e2cb0467ac4666d803d00d1a37` |
| 53 | `def` | [ledgerPrimes](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/ledgerprimes.md) | 455 | `declaration-track:6e1997987b8ad62efb02d48f014ce81e356f638078f02cbbe4e3a69d6dc9bed0` |
| 54 | `structure` | [ExternalPrimeBreach](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/externalprimebreach.md) | 460 | `declaration-track:b1ac5387095fafb32b494790820ec7ddb12feef5ce8b6a9c91c4e9e81b76ed18` |
| 55 | `theorem` | [external_breach_names_absent_prime](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/external-breach-names-absent-prime.md) | 466 | `result-track:044d4068dd0acee46055157228e6ec7bd0afdbe2dbf541e976877f7179238b35` |
| 56 | `inductive` | [HomologyPrecision](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/homologyprecision.md) | 475 | `declaration-track:499cdeef7883f5d054f0fd406e130ccb8df4297c5e0978f7f1637c74a2443ad3` |
| 57 | `inductive` | [ExactPowerAuthority](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/exactpowerauthority.md) | 485 | `declaration-track:8c80f66ee68b58687c09c25d7fff6db56ab646b651e8471ec8f6c2d73a76a7cd` |
| 58 | `theorem` | [field_only_cannot_yield_exact_power_authority](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/field-only-cannot-yield-exact-power-authority.md) | 490 | `result-track:7450f3ffca421a8793bbcef13ca5dbbd51ca5224c05f640aea00ca197d759a47` |
| 59 | `theorem` | [no_exact_power_from_field_only](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/no-exact-power-from-field-only.md) | 495 | `result-track:c6541da71859d91cddb0236b6de1809d77a512612d408e078e5882ea5fed8c53` |
| 60 | `structure` | [CertifiedTorsionFactor](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/certifiedtorsionfactor.md) | 501 | `declaration-track:280f0169248475cb6312703e27564bbca3c58efe534feb244f1a94d1fbf1293c` |
| 61 | `structure` | [CertifiedTorsionPacket](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/certifiedtorsionpacket.md) | 513 | `declaration-track:4e26fe8df12701936069c818ca7f047453bd37118ef957ad3eb2ff4d1c26ed5b` |
| 62 | `structure` | [CertifiedTorsionFactorReference](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/certifiedtorsionfactorreference.md) | 521 | `declaration-track:1b93574a720aee3caf905b47eb1ad10a544e9242d85d10cc26e4eac6cb3f50c6` |
| 63 | `def` | [resolveTorsionFactor](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/resolvetorsionfactor.md) | 525 | `declaration-track:5079d42d32e69d6952f101f96f90ca3c3cba26125f47b67db4a00a68b0e7de15` |
| 64 | `theorem` | [every_certified_torsion_reference_resolves](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/every-certified-torsion-reference-resolves.md) | 531 | `result-track:de82532e49b7c135da12d32852aeb1178e1277876d30230acb00a0c95853fe09` |
| 65 | `theorem` | [resolved_torsion_reference_has_packet_degree](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/resolved-torsion-reference-has-packet-degree.md) | 538 | `result-track:18c9224b670cd9bd8343bf41bde7eb2790b60047b80617fa201d0a438fdffeb2` |
| 66 | `def` | [firstFiveRadices](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/firstfiveradices.md) | 548 | `declaration-track:f0f921179ff7087f8635ec99eaa9eaa9bcafa03ff3ec678f3d0016e53f71da78` |
| 67 | `theorem` | [firstFive_cell_capacity](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/firstfive-cell-capacity.md) | 552 | `result-track:f740f43a613bf6c7903f781429ea37ee10c4c2547d63c2209f1918096912be4c` |
| 68 | `def` | [twelveBoundedCell](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/twelveboundedcell.md) | 558 | `declaration-track:ed6239830e4945c4eecc53e1bc0f43b68fb9d3eabfdfecae6c4a78ea4e4c5e6b` |
| 69 | `theorem` | [twelve_bounded_cell_ordinal](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/twelve-bounded-cell-ordinal.md) | 566 | `result-track:3d8574b7e85015acaae6d42242122cd85b784d3a950ed2ca5fde7f281a5b8a7d` |
| 70 | `def` | [primeTwo](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/primetwo.md) | 571 | `declaration-track:80abfaba5104113efcc10cc533dfad64cb31da738ae539a4e293c2402a3ab506` |
| 71 | `theorem` | [twelve_two_coordinate_lap_residue](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/twelve-two-coordinate-lap-residue.md) | 575 | `result-track:a87db77e62944d2df69e8d3f06c5425a48e7507bf0a7e174b35881763b2a018e` |
| 72 | `theorem` | [twelve_cell_round_trip](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/twelve-cell-round-trip.md) | 581 | `result-track:eef05c5feaaec2d206a4a271dfa1d38589b8f07f06c9a0e30fa551f13921517a` |
| 73 | `def` | [p5RadixFamily](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/p5radixfamily.md) | 593 | `declaration-track:5071b55e4cc7793e0512d49c9ec093e171af109ec6394f17c8fd4a7631e267e3` |
| 74 | `theorem` | [p5Radices_pairwise_coprime](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/p5radices-pairwise-coprime.md) | 597 | `result-track:51c296d2a6e66239913cbc3504e39d9b7b4c1239f8858454fe16a8c365febb00` |
| 75 | `theorem` | [p5_radix_product](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/p5-radix-product.md) | 604 | `result-track:55c1cec97c6ac8893d6a9427e61e1154d28dfabf937b8acb0e44182a84921ab4` |
| 76 | `def` | [p5NodeTwelveResidues](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/p5nodetwelveresidues.md) | 609 | `declaration-track:2c1d5bbdb123f0c2b642681f95434c6b21ec5e12b7f2be9b74f336b655b9e0a4` |
| 77 | `def` | [p5CrtRepresentative](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/p5crtrepresentative.md) | 614 | `declaration-track:40c99ad88f8a1252acdb694c20f94e1654e386319f60c3860a3382fee43a5081` |
| 78 | `def` | [p5DecodeRepresentative](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/p5decoderepresentative.md) | 619 | `declaration-track:7a0d0f5538c92e783208e224af9c887879b8d8b9756c97e54b8936a4b9f3003d` |
| 79 | `theorem` | [node_twelve_p5_crt_certificate](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/node-twelve-p5-crt-certificate.md) | 623 | `result-track:68a56ea9fe60faa73c6e057fd934204f2cb45403bb1810e76d32bbcc0de3bcaa` |
| 80 | `theorem` | [node_twelve_p5_crt_decodes](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/node-twelve-p5-crt-decodes.md) | 629 | `result-track:a7b1fbc34a0ee50aa888b6f4a09168efe245b07afa4aae05a057846ff285de59` |
| 81 | `def` | [nodeTwelveP5Ledger](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/nodetwelvep5ledger.md) | 635 | `declaration-track:cf34fd9136ae28a408a3308a5a463d34c662fb9aa71ab6ddce1a7c9a74fa3a3b` |
| 82 | `def` | [nodeTwelveThirteenBreach](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/nodetwelvethirteenbreach.md) | 640 | `declaration-track:d01982dd554fe0514ee149402b789633bbcfe2ad65411193ed12737a7dcd333e` |
| 83 | `theorem` | [node_twelve_extension_by_thirteen_preserves_sparse_identity](../../../../NumberTheory/PrimeBoundedContinuationPublicEdition1.lean/declarations/node-twelve-extension-by-thirteen-preserves-sparse-identity.md) | 647 | `result-track:7f3e794c4fd79821ba4c2bcacfc14a056043811cd241a11a3c70bb2d41525b56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8820b86291358a69d37824bbe2a5015c8b2f5e4f87bf1b23eade5635651f839a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Varianta922c67e3e4ba26127aeeea81af189f49af8f7ce8494d24ec37abd9689e34b3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
