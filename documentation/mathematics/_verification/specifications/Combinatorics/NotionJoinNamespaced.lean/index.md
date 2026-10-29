# Verification target: Notion Join Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec9637454cab67a51953364bd800ea3fb9a7375f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/NotionJoinNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/NotionJoinNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec9637454cab67a51953364bd800ea3fb9a7375f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.NotionDescent` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DeterminesAt](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determinesat.md) | 29 | `declaration-track:6cc00e878ed30e7e4a052adeaa2f01db02360e9f35056e5ae18d6539a7f665c5` |
| 2 | `def` | [DeterminesPredicateAt](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determinespredicateat.md) | 34 | `declaration-track:7ec16d2b7c6741424ab8890b5013371d65a7d40ed85153030777393fa1ad833b` |
| 3 | `theorem` | [determinesPredicate_iff](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determinespredicate-iff.md) | 39 | `result-track:51b5044deaaf4d8c470f1066982c2e921ed6e320c693b3fe2b89d4478bc13bf2` |
| 4 | `theorem` | [determines_iff_descendsThrough](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determines-iff-descendsthrough.md) | 45 | `result-track:71a61bec4146b53a9eef3b11f9017f66bb4e0bfd40ffae460d0801e9752472b4` |
| 5 | `def` | [RefinesAt](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/refinesat.md) | 52 | `declaration-track:b59da63d432a5a4fd0d77e21afa35e93bf0b66c6abdeb3ca23440f5308323dac` |
| 6 | `theorem` | [refines_refl](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/refines-refl.md) | 56 | `result-track:34c25b1dbce7c2247185d7783615a97fad224d5b867b759c13bf6b705f107b60` |
| 7 | `theorem` | [refines_trans](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/refines-trans.md) | 60 | `result-track:5257b20fe35eeb10c1146a6e6dea659d45d10ea917d1dc841eab5eed7aa82f12` |
| 8 | `theorem` | [determines_of_refines](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determines-of-refines.md) | 66 | `result-track:919468a8ab9df095615332a47646a2e2e56116eca5a32cae013907a24e79e863` |
| 9 | `theorem` | [determinesPredicate_of_refines](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determinespredicate-of-refines.md) | 72 | `result-track:84f168d12b0514b2d83f73a932a96f6d162fa180a960417ea0fbf27db97e64bf` |
| 10 | `theorem` | [determines_of_budget_le](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/determines-of-budget-le.md) | 79 | `result-track:e922c7cc12274581f1d8a22fe5f2d5faec93ed27f36118dcee0bca9ac86acfee` |
| 11 | `theorem` | [semantic_determines_of_finite](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/semantic-determines-of-finite.md) | 85 | `result-track:19f32bfc5fb963d3e8021d45c1df816e0c2c4c7d1b6f4b8e8d7a27ca9884a191` |
| 12 | `theorem` | [refines_of_tests_subset](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/refines-of-tests-subset.md) | 92 | `result-track:742e993606eb2736ea6936766969de8768a7f298d5bb4bcdaa6bf5383961bb07` |
| 13 | `def` | [join](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/join.md) | 101 | `declaration-track:757d4d1226d6c9f34bb6a3f902419a571908b63983e8c9efc39c28cf5f20a97a` |
| 14 | `theorem` | [join_sourceIdentity](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/join-sourceidentity.md) | 110 | `result-track:3b1667ee2342c4b91a5049d0c2fc361dd5d819ba8b1dd21301f0a08cf094bdbb` |
| 15 | `theorem` | [equivalent_join_iff](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/equivalent-join-iff.md) | 115 | `result-track:05efb5c79c5433f546c533204a8c17b7c000bb19cc87da23c178dd57f2817159` |
| 16 | `theorem` | [join_refines_first](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/join-refines-first.md) | 139 | `result-track:c92db3e67f21d6ddac51fce640c3378670777155580f006017e211995e90ea04` |
| 17 | `theorem` | [join_refines_second](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/join-refines-second.md) | 145 | `result-track:18d3950b350addc98e971e467b2f01827021fd9dbee04f7d9f41a9fc535e0fd9` |
| 18 | `theorem` | [refines_join_iff](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/refines-join-iff.md) | 151 | `result-track:543073b62ed53dbc339e33c9fb08539b861383c5ffdb330e52c251f834f7722a` |
| 19 | `theorem` | [join_equivalent_of_both](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/join-equivalent-of-both.md) | 164 | `result-track:a3499b0ef38069f145172848c55720a393baeb18549390698a8c6b53feaa3b5c` |
| 20 | `def` | [SynergisticFor](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/synergisticfor.md) | 174 | `declaration-track:ddeb2cb8f733424827e149960d0bb506337ea351b3afa779fed7aad41af38fce` |
| 21 | `theorem` | [synergistic_join_determines](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/synergistic-join-determines.md) | 181 | `result-track:a1dfc5d29bea6fe37e85dc78162cab561d591150fbb3b2350a30e6073e46ba21` |
| 22 | `theorem` | [synergistic_first_not_determines](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/synergistic-first-not-determines.md) | 188 | `result-track:f9a942e9ee009455d0507a1bb9708e4c68d89fa26daf4e48da075bf7780d7cc3` |
| 23 | `theorem` | [synergistic_second_not_determines](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/synergistic-second-not-determines.md) | 195 | `result-track:6e3abf19664c76109445f193cf0cd70047d211d884b8104792b41e0ff24dbf0c` |
| 24 | `def` | [coordinatePolicy](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/coordinatepolicy.md) | 206 | `declaration-track:ed215b1e954341f521ca0f2706bb62514dbb97cf0fd6d5c0ea7cd485cbe80c5c` |
| 25 | `def` | [firstCoordinates](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/firstcoordinates.md) | 211 | `declaration-track:866eec1f17f53a65cd8913279d1f7a422b252a2298a62c5bab7ab89773551bbd` |
| 26 | `def` | [secondCoordinates](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/secondcoordinates.md) | 217 | `declaration-track:4f472e2c6ab30737212d7c773268ad4baadefe685144945b80506dca4e7c3b37` |
| 27 | `def` | [emptyCoordinates](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/emptycoordinates.md) | 223 | `declaration-track:f4865dd5f10d35848f5d3090b60631ceeb7186b4d694721f03bc087dd9fb524e` |
| 28 | `theorem` | [common_policy](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/common-policy.md) | 229 | `result-track:7525f4e4cf3de8a373fa503c725353ce1dbbc27d7d241c5871a1e92d9f4de79d` |
| 29 | `def` | [jointCoordinates](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/jointcoordinates.md) | 232 | `declaration-track:afc79f49c6c520ad721c40089b4fe44d1f9749a19443026f5deb9306d7f38236` |
| 30 | `theorem` | [first_refines_empty](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/first-refines-empty.md) | 236 | `result-track:26de6d61ec760af3aac7abdaedca8953fe83130b07053fd0a2c98840b7d1d0ce` |
| 31 | `theorem` | [joint_refines_empty](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/joint-refines-empty.md) | 242 | `result-track:95598271d8d5081b998ffc1a650e968dac337a60d7f2880afcbd222964026b3d` |
| 32 | `theorem` | [first_loses_pair](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/first-loses-pair.md) | 249 | `result-track:89851158c7d00bdcf2f39ed8a400af0188496076e94be885f30b7956b8550296` |
| 33 | `theorem` | [second_loses_pair](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/second-loses-pair.md) | 254 | `result-track:07d736a7b4f138a3b1c1f07da3e21ff61ac9809284bacff419cc1f99639aa5e4` |
| 34 | `theorem` | [first_not_determines_identity](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/first-not-determines-identity.md) | 259 | `result-track:cd8eb7f129e904f918c1c42736ccfc2e999dd7dd1a7447584a40a3fa1f1cac84` |
| 35 | `theorem` | [second_not_determines_identity](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/second-not-determines-identity.md) | 265 | `result-track:d7f27ccc6ab2504078be3794ab637da05b95bc123c9ba5bb84963168ce0fb874` |
| 36 | `theorem` | [joint_determines_identity](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/joint-determines-identity.md) | 271 | `result-track:200a4a7c7620635da2f936fe7d14668518a299810509e46518dfc4a54ee7c7dd` |
| 37 | `theorem` | [identity_synergy](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/identity-synergy.md) | 283 | `result-track:43b9b68ad7c14efd3464d249e67308444ff0df742f9b4735b55ffca8ce0e9787` |
| 38 | `theorem` | [same_pair_remains_equivalent](../../../../Combinatorics/NotionJoinNamespaced.lean/declarations/same-pair-remains-equivalent.md) | 289 | `result-track:26325de5466f5c238c86f7786f89226683cd66cdd8830451638ec79306b91e60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d5b659313fb0331e2439f2908873b5ee7b2418f90f4ee5e1716834465ece834 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/NotionJoin/Variant39e37cf8367d24e35c499b93e98a2f5fec41b9cf610e35b76c9720e68cdb74ac.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
