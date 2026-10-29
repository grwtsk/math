# Verification target: Net Entropy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4beeb9daf4a1a4179fe4aa1aac3b502e00aa9b82",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4beeb9daf4a1a4179fe4aa1aac3b502e00aa9b82`.

Source path: `GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.TopologicalEntropy.CoverEntropy` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsDynNetIn](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin.md) | 62 | `declaration-track:4b5ca3ef7a7e918a3a5926fab23074a493cd07b6a9a144f09b15ab273677ce3a` |
| 2 | `lemma` | [IsDynNetIn.of_le](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin-of-le.md) | 65 | `result-track:1b533886979d39b480d1b8422fee88eb5844bc55f1286ec64f6850338ab2f006` |
| 3 | `lemma` | [IsDynNetIn.of_entourage_subset](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin-of-entourage-subset.md) | 70 | `result-track:d31b557c3610825855f29f292fcbec2b416c5632a7b1cfee5096ab8cd10e8fc1` |
| 4 | `lemma` | [isDynNetIn_empty](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin-empty.md) | 75 | `result-track:0713ab8cdbe19fab60808d183fa84722eeab6c3216964e68a54202109d3663c9` |
| 5 | `lemma` | [isDynNetIn_singleton](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin-singleton.md) | 79 | `result-track:295556d829452fcafd7dcff11cce19e1a1e473f5ddeb9699373325052d53bb7e` |
| 6 | `lemma` | [IsDynNetIn.card_le_card_of_isDynCoverOf](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin-card-le-card-of-isdyncoverof.md) | 86 | `result-track:ba7cfa2762fda612d9b47a516a94ebc6432b4999f191dc2dea7d2f926d223ca3` |
| 7 | `def` | [netMaxcard](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard.md) | 104 | `declaration-track:91f209f56a14ff0eb9e37a14829c445cb408a6a1a7b3da4c2de714351296bf3c` |
| 8 | `lemma` | [IsDynNetIn.card_le_netMaxcard](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/isdynnetin-card-le-netmaxcard.md) | 107 | `result-track:a145388de9ea88e5013ef9efa36251f8d08987538db44e685207c0230dabca8c` |
| 9 | `lemma` | [netMaxcard_monotone_time](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-monotone-time.md) | 112 | `result-track:9ccbe5abe8fde8b28dee8980207e40263036d35d8092883954dc0bf3c172e0fd` |
| 10 | `lemma` | [netMaxcard_antitone](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-antitone.md) | 116 | `result-track:2796e4c485533dbc2d8ca64df8a87cde957bc8204477fd242f37271381ff44a8` |
| 11 | `lemma` | [netMaxcard_finite_iff](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-finite-iff.md) | 120 | `result-track:5d9997c85cbf6e86c0c55b1356c35ba0624147f9aec144e6b1888baedfae1982` |
| 12 | `lemma` | [netMaxcard_empty](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-empty.md) | 156 | `result-track:2561a3a1c13d03815f19ac99250ccd79f78604524225ad61eb3f3f2259eb9a13` |
| 13 | `lemma` | [netMaxcard_eq_zero_iff](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-eq-zero-iff.md) | 163 | `result-track:caeef5edf142081ed16b47c0ca8f215299eb41b2b674e3db5abc0e2f7565ddd0` |
| 14 | `lemma` | [one_le_netMaxcard_iff](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/one-le-netmaxcard-iff.md) | 174 | `result-track:3d33a2cf9dfec46deba9bf4bb9385e25c07cdae221a00fe96505c165abff06e8` |
| 15 | `lemma` | [netMaxcard_zero](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-zero.md) | 179 | `result-track:6d72d594a061b7b9e105e188e423c175bc8f0a43b4c821c30552aa18fc055414` |
| 16 | `lemma` | [netMaxcard_univ](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-univ.md) | 188 | `result-track:5e98d709bb6a40383865dbc10c626bc80d8855304798cc4d1e4fbb83a56713bd` |
| 17 | `lemma` | [netMaxcard_infinite_iff](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-infinite-iff.md) | 197 | `result-track:2995221b727e558e6844e5cdfb0accca296366e0ee4cf54b9e389fe35d63f588` |
| 18 | `lemma` | [netMaxcard_le_coverMincard](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netmaxcard-le-covermincard.md) | 213 | `result-track:867d628abe57693341c3ce9f627acaba5669d9a9a11d801dee13cf38ff4caffd` |
| 19 | `lemma` | [coverMincard_le_netMaxcard](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/covermincard-le-netmaxcard.md) | 225 | `result-track:53f394fc9915d9840422f7b1dd3d016f445bab13cea448aa3b6ef44d1bd5b2dc` |
| 20 | `def` | [netEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage.md) | 260 | `declaration-track:5a53e27d206962fae1c65d51a4ed17d37097fa766df0c9c940ce816186790364` |
| 21 | `def` | [netEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage.md) | 266 | `declaration-track:c15fc4147d7c0b3154b0c87645f87e3e6a356a1bbc5f5e26ab693644d0103d78` |
| 22 | `lemma` | [netEntropyInfEntourage_antitone](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-antitone.md) | 269 | `result-track:5a7a4304d44ea121014ae506ced7d82c1824e087d8b816dde6aa0025c0af6d92` |
| 23 | `lemma` | [netEntropyEntourage_antitone](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage-antitone.md) | 273 | `result-track:d010fe1acd989082c7bc30196b04521b8c233deb85dcc1d05853bc00dc719932` |
| 24 | `lemma` | [netEntropyInfEntourage_le_netEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-le-netentropyentourage.md) | 277 | `result-track:fa3ca19fd5d195c0256c2c40e4fb92477b4fb8663b2f5c0f1504323626aff033` |
| 25 | `lemma` | [netEntropyEntourage_empty](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage-empty.md) | 282 | `result-track:8b35988d8a6b14c1729e349e1cc4ec39d3d90679a5e82acf7128f8543e751089` |
| 26 | `lemma` | [netEntropyInfEntourage_empty](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-empty.md) | 289 | `result-track:c79e86b455f43fe1385629398aa80a07bb0839782474ad1e69509fcb11f7a0fb` |
| 27 | `lemma` | [netEntropyInfEntourage_nonneg](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-nonneg.md) | 293 | `result-track:1836bdc84a5ed225f1885a7e86dcc1a4e5ba7bb5f3bddee906e37e3011932813` |
| 28 | `lemma` | [netEntropyEntourage_nonneg](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage-nonneg.md) | 302 | `result-track:a8d6cb19be2ba715afed2687ef336eaca1014d310ae6c809657fa9c0c497e2f1` |
| 29 | `lemma` | [netEntropyInfEntourage_univ](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-univ.md) | 306 | `result-track:388d80368d382c992bec5bebf90eec78c1c816e94540a1e6d4931d8a792832c2` |
| 30 | `lemma` | [netEntropyEntourage_univ](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage-univ.md) | 311 | `result-track:1321cfb19c474ce70ac2275dcc1b1fea47a42a86fb8ab83a792234826655c8ad` |
| 31 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-le-coverentropyinfentourage.md) | 316 | `result-track:f468825967564579eefc188869faf26a7bffb1183b73a09395d9d8ab5aa3cd5d` |
| 32 | `lemma` | [coverEntropyInfEntourage_le_netEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/coverentropyinfentourage-le-netentropyinfentourage.md) | 321 | `result-track:b1278d8bc5b6b852ab925d8bb7b4c5554165d868026dc658af35f1ae7944788c` |
| 33 | `lemma` | [netEntropyEntourage_le_coverEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage-le-coverentropyentourage.md) | 326 | `result-track:a6ddb937668ba0da71d0a054f75850b83f5cdc076245dcbccf9d564849cb883a` |
| 34 | `lemma` | [coverEntropyEntourage_le_netEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/coverentropyentourage-le-netentropyentourage.md) | 331 | `result-track:4c222f03e11d7a79b16260d14ec581d4fafc5246cc91c86178c68756069ae46e` |
| 35 | `theorem` | [coverEntropyInf_eq_iSup_netEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/coverentropyinf-eq-isup-netentropyinfentourage.md) | 344 | `result-track:f535cecbc60fb501191114feff74f38ef8eaabfea5be26cddb0d1c41d99bbc8a` |
| 36 | `theorem` | [coverEntropy_eq_iSup_netEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/coverentropy-eq-isup-netentropyentourage.md) | 358 | `result-track:97b0faba573959741e8e3adab90d932529ff209ec5d29e050c0cd0997eb3cb17` |
| 37 | `lemma` | [coverEntropyInf_eq_iSup_basis_netEntropyInfEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/coverentropyinf-eq-isup-basis-netentropyinfentourage.md) | 368 | `result-track:0ccce3c7410d942728c2a1f59365d84e13f6e7884faea7ce2204e3b6a916201c` |
| 38 | `lemma` | [coverEntropy_eq_iSup_basis_netEntropyEntourage](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/coverentropy-eq-isup-basis-netentropyentourage.md) | 378 | `result-track:301508f2b6480c6fc663be8c4b0ff4aed59c75c4a62f19458d7279151c0e0d51` |
| 39 | `lemma` | [netEntropyInfEntourage_le_coverEntropyInf](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyinfentourage-le-coverentropyinf.md) | 388 | `result-track:ca6961a21596933bdf5ee6dde6e7cc9b438512886978b7ec9cac24077d6fe7c1` |
| 40 | `lemma` | [netEntropyEntourage_le_coverEntropy](../../../../DynamicalSystemsAndErgodicTheory/NetEntropy.lean/declarations/netentropyentourage-le-coverentropy.md) | 393 | `result-track:dbc29796d05a0ee5f690246c93718f6d74eb79ea031922d8cbf7c6a76a7a0d5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e49c1179ad8d6e07911b9ce4f609292c03f3c3b9c6ff7f2c76279982d0f9fd4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/NetEntropy/Variant6f0facab5db93336036f895da7fb811bf9498fc23b836771ca7a5efed3b427ee.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
