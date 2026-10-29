# Verification target: Sequential Prime Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f5f0c50442dcc83b0ea890437b65a446e62c591",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f5f0c50442dcc83b0ea890437b65a446e62c591`.

Source path: `GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.Address` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/ext.md) | 30 | `result-track:2ff6259feb593154305ceb396b32b4386e08b2a6991a252b55dd1ec3d794b7dc` |
| 2 | `def` | [axesFrom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/axesfrom.md) | 42 | `declaration-track:b963e9fd0e06cc711d2732bf8046b054aabf5c479589c2cb5be938fadc6bd967` |
| 3 | `def` | [axisCardinalities](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/axiscardinalities.md) | 49 | `declaration-track:411d575cd9cd0a8d61470044fc42c04aae306d6b2e77e0d21401e1100ba6d828` |
| 4 | `theorem` | [axesFrom_positive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/axesfrom-positive.md) | 53 | `result-track:4c30c9f5b5384c0506cd5ec584fd43c5f75d6664c6f4ce87fcdee11eb5846db7` |
| 5 | `theorem` | [axisCardinalities_positive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/axiscardinalities-positive.md) | 67 | `result-track:9b6d37caf1645cd6f59bc9873e65fb7a6aebfc43005b52e991259b34169e20c4` |
| 6 | `def` | [CoordinateFiber](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/coordinatefiber.md) | 77 | `declaration-track:75c1f69a6ab8c799aa13cc1a3e7efd12e7d322acc9ed857e96d1d9902f083412` |
| 7 | `def` | [cardinality](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/cardinality.md) | 84 | `declaration-track:a52ccc93a604e35f9cb185043b13ba7807dd9d552405c4906ba7a1b35f047924` |
| 8 | `def` | [mixedRadix](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradix.md) | 89 | `declaration-track:fed2d5e4edf0f281caf34bfb2cf35dd8a84b0a899d689f5c387711ee867d53ee` |
| 9 | `def` | [zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/zero.md) | 95 | `declaration-track:f8ed6559476e0f5ea726fe141c23e49b168d1b5f6f8a4002848592f58b2c51c9` |
| 10 | `theorem` | [mixedRadix_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradix-zero.md) | 103 | `result-track:7486a7248f8ebe3dd7d7886362aa858b61bba649cf13fd6d2f7cc5f96752510c` |
| 11 | `theorem` | [cardinality_positive](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/cardinality-positive.md) | 114 | `result-track:d1f97c56e80c615f1358e88f9e2f35d79e12341dbe6fd5dcf3d45a868bd07a82` |
| 12 | `def` | [ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/ofnat.md) | 126 | `declaration-track:f99dad192d0e854e9acc235962fdd422776c3fd5518d313041ea5b2381dc3ec3` |
| 13 | `theorem` | [mixedRadix_ofNat](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradix-ofnat.md) | 134 | `result-track:4e47737c8ffd3eb7c366082eca5984a164ec17fee6d56811aab4f8686134e01c` |
| 14 | `theorem` | [mixedRadix_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradix-injective.md) | 157 | `result-track:399026bafe86fb94f4b22178813a6ff1e668b3497bdb1526c4cc7ccd2c078d9c` |
| 15 | `theorem` | [mixedRadix_lt_cardinality](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradix-lt-cardinality.md) | 187 | `result-track:61c37ead8791002b0fc8f7133183bfbba692c6bb6e1633a6ca810a6a7601586d` |
| 16 | `def` | [mixedRadixEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradixequiv.md) | 211 | `declaration-track:4c5e72b39cc48b50f6d3a9bd724a348a3427a16e3f7d77b5d0289eea1c808799` |
| 17 | `theorem` | [mixedRadixEquiv_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/mixedradixequiv-apply.md) | 226 | `result-track:10ff67b618d1928e154305c5c2b1c6a67b52ed7bd39dcc9097209bb0b297c9fd` |
| 18 | `def` | [triangular](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/triangular.md) | 238 | `declaration-track:23d3031fe15dbcfda7f0e6bf5d2fd44f5392fb51b0b9576a530cde7ed9984faa` |
| 19 | `theorem` | [triangular_formula](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/triangular-formula.md) | 241 | `result-track:7ca057f72026d4d9a26becfe4def66643638600219ae2976d88199d4efc829e6` |
| 20 | `theorem` | [triangular_succ](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/triangular-succ.md) | 247 | `result-track:9786cad81c8dd7ef94332179b5434b17f87d2523cfb6effa762fe6632a501b27` |
| 21 | `theorem` | [triangular_strictMono](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/triangular-strictmono.md) | 251 | `result-track:5631b1712e78909fee8f7a5be6f7855e18566f27571344f2b0eda210ea9ba709` |
| 22 | `theorem` | [pair_eq_triangular](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/pair-eq-triangular.md) | 256 | `result-track:f2d72db4d2cc853c36b1aa3ef5a2a516295841285f02c843a9f53789ce31edc6` |
| 23 | `theorem` | [pair_lower](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/pair-lower.md) | 260 | `result-track:786e25923eb5249cf609be9e9c57fdbf0acc2398316e2619418aa299b36f32cc` |
| 24 | `theorem` | [pair_upper](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/pair-upper.md) | 265 | `result-track:9f90383206eb8873ce0b8e3807305fb6743f1ee21cf9c9287d88cecc725b1e0e` |
| 25 | `theorem` | [pair_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/pair-injective.md) | 270 | `result-track:2d89e0691ae79680b356de7f54038b291e48b3ad1e3184ef93531e0586246e99` |
| 26 | `theorem` | [pair_injective₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/pair-injective-source-edition-2.md) | 298 | `result-track:d1f30ec9cfc724133d03abd3a70d725d45fda6aa70e0326e215ec98cfc9927e4` |
| 27 | `theorem` | [finiteSequenceCode_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/finitesequencecode-injective.md) | 308 | `result-track:b0c2d2f445601f064a43c42ef8a7628db006fd0e11d0f1de48db045462bb5d01` |
| 28 | `theorem` | [specificationCode_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/specificationcode-injective.md) | 332 | `result-track:64e722c00fa449a6c1e9290d945bc139430e7f7bc54873cab03a7ede31ddd6b5` |
| 29 | `structure` | [SequentialPrimeCarrierAddress](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/sequentialprimecarrieraddress.md) | 339 | `declaration-track:293b68d50595db0efc7ab7161c0d7d4ec27a29e26b6668b645d4dfbd77c23df3` |
| 30 | `theorem` | [ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/ext-source-edition-2.md) | 347 | `result-track:ff88cd63f95db177357e6bc52dbd7f314c495df59a3436c192ee22a5d5278df3` |
| 31 | `def` | [code](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/code.md) | 361 | `declaration-track:7a9e8a728d0dc2778cdf96652ba77abcc3129c00a43156d8d63fbf8c8545b0dd` |
| 32 | `theorem` | [code_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/code-injective.md) | 366 | `result-track:54c4e7193229eea0bf43761d6d10ed0de1678445f933007f0ca9eb816651fa6b` |
| 33 | `def` | [unitSpecification](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/unitspecification.md) | 389 | `declaration-track:6f86c28f465f28795e64ba4c59db8f1fb22689ad22de882bd1e46eb2728351cb` |
| 34 | `def` | [unitCoordinate](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/unitcoordinate.md) | 396 | `declaration-track:1f2527561d3e57fd89b0f28ca9ca9cbccb3bbc1dc76f6a92b2a30c38b2aa5fb2` |
| 35 | `def` | [occurrenceEmbedding](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/occurrenceembedding.md) | 402 | `declaration-track:cf032b4943f2935ac687bcbb190c9dc9ca6d74bd1e1d70efc6f2292607dedbea` |
| 36 | `def` | [AddressImage](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/addressimage.md) | 409 | `declaration-track:03654094ab269fb482e3417fbcb5f5b7c13cddc8f811337dfa34072be94dd43f` |
| 37 | `theorem` | [addressImage_infinite](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/addressimage-infinite.md) | 411 | `result-track:96e194b714025898075cb29bff2ccbbc1a875af2af5024b738138dafdcf2a43c` |
| 38 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/instance.md) | 418 | `declaration-track:78d1074e343347e559af50aeebebe2740e35fa20d89381b799f01b47dcf43230` |
| 39 | `def` | [increasingImageEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/increasingimageenumeration.md) | 422 | `declaration-track:6130bbd2507cb8cf2ad3cc4cd1708265dbe8b1b6de7df118c96e76e21d808ea4` |
| 40 | `theorem` | [increasingImageEnumeration_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/increasingimageenumeration-coe.md) | 425 | `result-track:a681039e1b2cc2ae412b80bec684f9b5830cef77758f89d853c86445be54029f` |
| 41 | `def` | [filteredEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/filteredenumeration.md) | 434 | `declaration-track:1f704f9bbe2e4ce25d02ac5e549e3c10363a7a95300da5a87194c2d4c9da0a5c` |
| 42 | `theorem` | [code_filteredEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/code-filteredenumeration.md) | 439 | `result-track:1e6ac9cb6f3eae74956b9c86277896c4d3c78d6f6df1072e837e323c5aff2c66` |
| 43 | `def` | [canonicalEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/canonicalenumeration.md) | 448 | `declaration-track:032b0e939787ced481c0a560368903af2bffef3c1d95abfe474dac964e745d6b` |
| 44 | `theorem` | [code_canonicalEnumeration](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/code-canonicalenumeration.md) | 459 | `result-track:c7ca32365265a2b3423949ce6232ba70ef4b101ba11bc61beddfa954581f1ba7` |
| 45 | `theorem` | [canonicalEnumeration_code_mem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/canonicalenumeration-code-mem.md) | 464 | `result-track:79cdf3b3efbdf2977bf159336a1179445fa94e8caba7e71003a95cb04c95ee85` |
| 46 | `theorem` | [canonicalEnumeration_increasing](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/canonicalenumeration-increasing.md) | 470 | `result-track:ef80563731b4560bff66603602dc186678dc6374e60adf580009d66e29072d1b` |
| 47 | `def` | [addressImageCount](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/addressimagecount.md) | 477 | `declaration-track:0b49e324425c6985904eba782dec4a51f3af4165520771885bf53abc9085b540` |
| 48 | `theorem` | [canonicalEnumeration_inverse_count](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/SequentialPrimeNamespaced.lean/declarations/canonicalenumeration-inverse-count.md) | 481 | `result-track:5959fea1dfaff6d75779482850d90ac461a97c7acc028783f4997c204757c483` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=15d4ca95080f796dec390f297f13491449d2bd3a26ec3b0295c25feae818fd23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean","GRWTSK/_verification/specifications/Algebra/SequentialPrime/Variant2fcd1551bc1bb87dcabf1207f29b0e5652369b4faf04f445aec169047fbb4888.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
