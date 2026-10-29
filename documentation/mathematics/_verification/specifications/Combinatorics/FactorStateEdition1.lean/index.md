# Verification target: Factor State Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "209bed08fc2a3433333b0f842db039b743c437c9",
  "lexical_observation_count": 66,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FactorStateEdition1.lean/index.md) · [Full source](../../../../Combinatorics/FactorStateEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `209bed08fc2a3433333b0f842db039b743c437c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [composite_has_small_prime_divisor](../../../../Combinatorics/FactorStateEdition1.lean/declarations/composite-has-small-prime-divisor.md) | 13 | `result-track:4fe31d2e1afa0d7535b7dd0534ce05eeea5bf6f43dc5be42d2d5d741900710ab` |
| 2 | `theorem` | [prime_of_exhausted_horizon](../../../../Combinatorics/FactorStateEdition1.lean/declarations/prime-of-exhausted-horizon.md) | 24 | `result-track:f3d3c736e7890a144ac9e6147343a52947e26cd5e8dfdb1ec4976da9e0d78ed4` |
| 3 | `theorem` | [prime_of_all_small_primes_excluded](../../../../Combinatorics/FactorStateEdition1.lean/declarations/prime-of-all-small-primes-excluded.md) | 33 | `result-track:5a203d9b4f0a2cb80aad75e9c6b40403c8414d0dc6061b8456e66f6328acb7d1` |
| 4 | `theorem` | [exclusion_persists](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exclusion-persists.md) | 39 | `result-track:1b864c7247b36cbe0a5903143c1a2935f10d13ee399cce870986a0cd27e2791d` |
| 5 | `theorem` | [horizon_contracts](../../../../Combinatorics/FactorStateEdition1.lean/declarations/horizon-contracts.md) | 43 | `result-track:821a609b55bf8e0a453b29058be4c2788035bceacca898a8df8fa3e82b5b1b45` |
| 6 | `abbrev` | [PrimePowers](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primepowers.md) | 47 | `declaration-track:6d851fca6e76c2ae37153d420b1e5586ca8462ecec25c91295bfae043aa19435` |
| 7 | `def` | [primeProduct](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primeproduct.md) | 50 | `declaration-track:bc355602c0b752f7c6282ab8e81f93e482516cd639d713f05e0846a3f63f40ce` |
| 8 | `def` | [PrimeMap](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primemap.md) | 53 | `declaration-track:546e1e1003cf3005ce944c2de7b222b9190cb777ddd8b5507e81bd7f8c12b9ed` |
| 9 | `theorem` | [primeProduct_add](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primeproduct-add.md) | 55 | `result-track:f2c8f71f7dc417fa4d83e6b5e30dc2d7a70535c61a38c2cd7977259d7f02ccfe` |
| 10 | `theorem` | [primeProduct_single](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primeproduct-single.md) | 59 | `result-track:394cb1f04689cf8c857a7b8d3ec807c9fd6ac213a10457ea1f2a3bb252c893a2` |
| 11 | `theorem` | [primeProduct_pos](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primeproduct-pos.md) | 63 | `result-track:6068e542348d339860d376b001cf1e52062f47081348138c4c13f90cbf017c63` |
| 12 | `theorem` | [primeMap_add](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primemap-add.md) | 68 | `result-track:ca1a14cb5802410b4899eb391f18f236bf7745c72abcd6c1551ea2e4f2780595` |
| 13 | `theorem` | [primeMap_single](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primemap-single.md) | 75 | `result-track:3a4a25558514282f318df8a8363b7178ee77b36210745dc043bd471410e1b18d` |
| 14 | `structure` | [State](../../../../Combinatorics/FactorStateEdition1.lean/declarations/state.md) | 83 | `declaration-track:346c6cd8ff9456bbe957f8d024080c8d8a51a7ba46c7dba2a5136b7e0871b4b0` |
| 15 | `def` | [State.horizon](../../../../Combinatorics/FactorStateEdition1.lean/declarations/state-horizon.md) | 99 | `declaration-track:2eee543edfeb86f5e73011636f230f1f654c1b949b07f524728d79060027ec4b` |
| 16 | `def` | [initial](../../../../Combinatorics/FactorStateEdition1.lean/declarations/initial.md) | 102 | `declaration-track:269d35e560e2745af15a1ddce0f843e87052532cd7e21d7cfec72e9f79961a7d` |
| 17 | `structure` | [ExactExtraction](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exactextraction.md) | 115 | `declaration-track:8e4913ac9f1b20c222d9e26519537a64e2c8f72451483acefee97e9ca42be374` |
| 18 | `theorem` | [ExactExtraction.valuation](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exactextraction-valuation.md) | 123 | `result-track:7817795918f9495b73c6ac0402a1b5298ee6485bd8bb7bf76d6a5489e50587e9` |
| 19 | `theorem` | [ExactExtraction.after_dvd](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exactextraction-after-dvd.md) | 128 | `result-track:255bd03e3d6cff4175f96758cd631d425166781a7c2d013a8e8642b046af48d4` |
| 20 | `theorem` | [ExactExtraction.prime_dvd](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exactextraction-prime-dvd.md) | 133 | `result-track:8fbabfc19fa36dc0ea9336f0f004ef52ad4c7f257065fd03f4533c0afacb828b` |
| 21 | `theorem` | [ExactExtraction.shrinks](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exactextraction-shrinks.md) | 138 | `result-track:d721359c4f01148251ed90c813848a2904f260fb110489618519a9bb384f64c0` |
| 22 | `theorem` | [ExactExtraction.horizon_contracts](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exactextraction-horizon-contracts.md) | 144 | `result-track:52ce04fec94125b4d52bb4f2765b98e3f53da7483a6d67f1e86fdbee2548abe9` |
| 23 | `theorem` | [extraction_scale_fresh](../../../../Combinatorics/FactorStateEdition1.lean/declarations/extraction-scale-fresh.md) | 149 | `result-track:3aae003e14be7f218c6039e340cc9cd151d111ecbeca7e812ada97afb0a7172c` |
| 24 | `def` | [extract](../../../../Combinatorics/FactorStateEdition1.lean/declarations/extract.md) | 155 | `declaration-track:0c7df08d2b9f8d801b4e54bbeec4f4f2cbfdddd1af0a5d0ce56b39d33924947f` |
| 25 | `def` | [exclude](../../../../Combinatorics/FactorStateEdition1.lean/declarations/exclude.md) | 189 | `declaration-track:128300f3846c89416d3b5715bc35c956451a570294d47dbd0d4c101f958e3999` |
| 26 | `theorem` | [State.extracted_exact](../../../../Combinatorics/FactorStateEdition1.lean/declarations/state-extracted-exact.md) | 204 | `result-track:7f6950cec57b1eff46481f0b3f32bff040b942922082fec92d7c715e466eae84` |
| 27 | `structure` | [CompleteFactorization](../../../../Combinatorics/FactorStateEdition1.lean/declarations/completefactorization.md) | 215 | `declaration-track:aeca90d1ad3004d24248bfcdba397a64f69abfb43281c34bdba0b2c3f6ac562e` |
| 28 | `theorem` | [CompleteFactorization.exact](../../../../Combinatorics/FactorStateEdition1.lean/declarations/completefactorization-exact.md) | 222 | `result-track:237feec9db970523f9dfd657cca2525c911195d801141ac6767d8780f817efe5` |
| 29 | `structure` | [ResidualOne](../../../../Combinatorics/FactorStateEdition1.lean/declarations/residualone.md) | 230 | `declaration-track:c5a26012695d850ac263f6686e51cabe1a5eb9c91f6c37eccc80ece4f6b3cba2` |
| 30 | `structure` | [PrimeResidual](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primeresidual.md) | 234 | `declaration-track:6b08f8bc7d84235b6a781b5a757406375e1fed7cdd07952cceec807c43db5230` |
| 31 | `theorem` | [primeResidual_of_coverage](../../../../Combinatorics/FactorStateEdition1.lean/declarations/primeresidual-of-coverage.md) | 238 | `result-track:ed441fa2f27f698a2b24a3266e13206afe4099713bd6173f4cbeb84a11cc4dbe` |
| 32 | `def` | [closeOne](../../../../Combinatorics/FactorStateEdition1.lean/declarations/closeone.md) | 246 | `declaration-track:2f5e0c159344e960f348898b5e9c54e1118293f69895cad6f1e31fe8eab75925` |
| 33 | `def` | [closePrime](../../../../Combinatorics/FactorStateEdition1.lean/declarations/closeprime.md) | 252 | `declaration-track:e988e4d4b5750400fb4c2855cc0d7dd3108f3fc87e59d393bb5ae0301fb5bb69` |
| 34 | `theorem` | [terminal_cases_disjoint](../../../../Combinatorics/FactorStateEdition1.lean/declarations/terminal-cases-disjoint.md) | 261 | `result-track:3b65014443c0a01757564c8e25576bda7d1d4fd1982ffe33410bd9f06cda412f` |
| 35 | `theorem` | [closePrime_last_depth](../../../../Combinatorics/FactorStateEdition1.lean/declarations/closeprime-last-depth.md) | 266 | `result-track:ca65d8dcd55f33a46021332fba3254ab1be7508539c65ce5f00230dfd0e60fcc` |
| 36 | `structure` | [Refinement](../../../../Combinatorics/FactorStateEdition1.lean/declarations/refinement.md) | 274 | `declaration-track:6b17ee1fe510fcd6407a6fef46325d8ead8c56835f8dfb7b9ec1735609a72fac` |
| 37 | `theorem` | [Refinement.residual_dvd](../../../../Combinatorics/FactorStateEdition1.lean/declarations/refinement-residual-dvd.md) | 282 | `result-track:4cb6f0ea76136cc65c931801eb6e3c86efd4333e5b40ec5d3741fdaae87f02c7` |
| 38 | `theorem` | [Refinement.negative_persists](../../../../Combinatorics/FactorStateEdition1.lean/declarations/refinement-negative-persists.md) | 287 | `result-track:9bb866d6d9a800c5e3ddb78666c83ccbf44763c26407577ac848c12b2efa571f` |
| 39 | `theorem` | [Refinement.horizon_contracts](../../../../Combinatorics/FactorStateEdition1.lean/declarations/refinement-horizon-contracts.md) | 290 | `result-track:120d2ece46b2277d6c103bc03876374e5f2367c18945fb531a18f069960082a1` |
| 40 | `def` | [Refinement.trans](../../../../Combinatorics/FactorStateEdition1.lean/declarations/refinement-trans.md) | 295 | `declaration-track:1effb6df2899ec473e85fb40bf3e2decff4c4e4ec5b638fb7df82db49dc5a433` |
| 41 | `theorem` | [Refinement.preserves_conservation](../../../../Combinatorics/FactorStateEdition1.lean/declarations/refinement-preserves-conservation.md) | 306 | `result-track:84f4c48c8640da3f93a3e65a48012641838431d0df7967021282bc9cd440a67a` |
| 42 | `def` | [extractionRefinement](../../../../Combinatorics/FactorStateEdition1.lean/declarations/extractionrefinement.md) | 313 | `declaration-track:f2ac471f745b3912c42001e6858203c042d18a5e9f4de3b92308880f96428794` |
| 43 | `structure` | [DivisorSplit](../../../../Combinatorics/FactorStateEdition1.lean/declarations/divisorsplit.md) | 322 | `declaration-track:85d1f0c13fb4692a120d398994d2dc97c5c18a7922dc119f00ec9205a6d96754` |
| 44 | `theorem` | [DivisorSplit.composite](../../../../Combinatorics/FactorStateEdition1.lean/declarations/divisorsplit-composite.md) | 332 | `result-track:788c00de793d82a46a93eabba4e19b98defcdb2cfc2be1beb14f379a524640cb` |
| 45 | `def` | [certifyDivisorSplit](../../../../Combinatorics/FactorStateEdition1.lean/declarations/certifydivisorsplit.md) | 337 | `declaration-track:3e190798c0d40ce825f8f34e34348fc93b5875c6d5130e2b71ff0e3a940ad463` |
| 46 | `theorem` | [DivisorSplit.preserves_conservation](../../../../Combinatorics/FactorStateEdition1.lean/declarations/divisorsplit-preserves-conservation.md) | 350 | `result-track:e5873f986cfb9fed36e6b51573aee1cf993541323417cf36549004659292215c` |
| 47 | `theorem` | [DivisorSplit.horizons_contract](../../../../Combinatorics/FactorStateEdition1.lean/declarations/divisorsplit-horizons-contract.md) | 357 | `result-track:75548d886e6b822980e4865a0c0c5526de97589b5989ffb311018b566db88e26` |
| 48 | `theorem` | [fixture_two_terminal](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-two-terminal.md) | 365 | `result-track:f30be7bd698f09a5826d7753f7de417746aee8cb2ec8bd1025b4ee0c28765137` |
| 49 | `theorem` | [fixture_three_terminal](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-three-terminal.md) | 372 | `result-track:aeb036cc745c70716b44d1567fa8bfa6f81cc23b905aad9835fd0fbf8458159c` |
| 50 | `theorem` | [fixture_four_extraction](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-four-extraction.md) | 379 | `result-track:028ff07375b25af5a5f289ae3ab1383f21da6d444d927b44efe5fe5709c45f77` |
| 51 | `theorem` | [fixture_four_terminal](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-four-terminal.md) | 382 | `result-track:0da0dac83ba7dea606d0971d0dada6f404b74b374fbfa0e5acc24c527a0284d5` |
| 52 | `theorem` | [fixture_four_not_prime_terminal](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-four-not-prime-terminal.md) | 385 | `result-track:ef7fa9b7378a5eb32f2b7b108ea96f8f55a4ccc5bd5aa40e8430a8a2d9cecc36` |
| 53 | `theorem` | [fixture_four_complete](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-four-complete.md) | 390 | `result-track:c0695e6f0e942b83004e0abefd1b6043ace8586a2a9cb77a05e22bbcb622fe3d` |
| 54 | `theorem` | [fixture_twelve_extraction](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-twelve-extraction.md) | 394 | `result-track:fc6204648196adce94b7c012f4c0547411db08d7afbba299ed10213de3a094a1` |
| 55 | `def` | [twelveAfter](../../../../Combinatorics/FactorStateEdition1.lean/declarations/twelveafter.md) | 398 | `declaration-track:6284f0beb4a72308bdde12fb67f9f73c2c517c07712bd8ff8aed960b729897ae` |
| 56 | `theorem` | [fixture_twelve_horizon](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-twelve-horizon.md) | 401 | `result-track:635820140ebcef557d8cdc72a072074af894e98adc3709d41ea25fa1f0dda822` |
| 57 | `theorem` | [fixture_twelve_prime_terminal](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-twelve-prime-terminal.md) | 405 | `result-track:41b2332a3c5f91c7310df28bec991843239f8b5d98b075fbe9179eb09c75407c` |
| 58 | `theorem` | [fixture_twelve_complete](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-twelve-complete.md) | 412 | `result-track:b85db4eaa678e4dba2038e6352c3b5e476d8f04c1cb68607fa8d7a281ad494cf` |
| 59 | `theorem` | [fixture_three_extraction](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-three-extraction.md) | 416 | `result-track:d25a23117ee3a5e1a363b2844d29bdf9b7e1f2bdc04828649d496f03c68ab413` |
| 60 | `theorem` | [fixture_twelve_composition](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-twelve-composition.md) | 419 | `result-track:d79ae96066c9e3c78c1ae94a8a0988011a68d540f974d7458cffb5305c3573dc` |
| 61 | `theorem` | [fixture_partial_extraction_rejected](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-partial-extraction-rejected.md) | 426 | `result-track:a55d976e8250e9a60ab99c72cc6cff43d3d37e89dfdfc57c30b97eb5ef2d563e` |
| 62 | `theorem` | [fixture_prime_equality_guard](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-prime-equality-guard.md) | 431 | `result-track:94b431b77ee3ee31710eac883f9417341162ce9c710ebf3de85baa1ecacbd8cd` |
| 63 | `theorem` | [fixture_missing_horizon_coverage](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-missing-horizon-coverage.md) | 438 | `result-track:fa28c5018b8319d3142bbab4748501d036d6e7cd8a94d6233503e4c4209d97ed` |
| 64 | `theorem` | [fixture_unrelated_residual_rejected](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-unrelated-residual-rejected.md) | 446 | `result-track:dd98f9a912ff82a0a2b6a5df76521c9d8538a68606d6d258305567bc864fb348` |
| 65 | `theorem` | [fixture_composite_divisor_collapse](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-composite-divisor-collapse.md) | 450 | `result-track:63d18dadf73914839dfc37a890df68d8e42bf2fc7f2f2050c6f171a7215270b9` |
| 66 | `theorem` | [fixture_bad_divisor_rejected](../../../../Combinatorics/FactorStateEdition1.lean/declarations/fixture-bad-divisor-rejected.md) | 456 | `result-track:bb19035002fe324551980b3cf37fd6d61c19e4d6b3290db70df165c3d3ffd542` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1355d6da07e89fc202f57f540cdbe237e5c85b2dee9b30d79dbd93a06a46abc0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FactorState/Variant26bbf22e9252c6955d5711bef7e106d7b56c844af321e22747835bdde404df83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
