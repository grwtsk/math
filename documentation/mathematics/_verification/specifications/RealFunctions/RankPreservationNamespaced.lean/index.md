# Verification target: Rank Preservation Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7e2b78ba153e61f446bab54b32eab96e02b913e4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RankPreservation/Variant30a9d0acd67a85a4225a2ff359d79e2cacc1fd5b5963ba40086c727587eb0cfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/RankPreservationNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/RankPreservationNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7e2b78ba153e61f446bab54b32eab96e02b913e4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RankPreservation/Variant30a9d0acd67a85a4225a2ff359d79e2cacc1fd5b5963ba40086c727587eb0cfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/RankPreservation/Variant30a9d0acd67a85a4225a2ff359d79e2cacc1fd5b5963ba40086c727587eb0cfe.lean.json)

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
| 1 | `structure` | [StableSubcomplex](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/stablesubcomplex.md) | 22 | `declaration-track:1c9a4bcec6e793dfe9b6af70ed3497102d42c6c7676857c39436d210cd7600cd` |
| 2 | `structure` | [IntegralHomologyRank](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/integralhomologyrank.md) | 28 | `declaration-track:c8332d67503cd97e337f73978fb759aba31513bd0a7687e0f3238fb8be5b7d23` |
| 3 | `structure` | [RealRelaxedHomologyDimension](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/realrelaxedhomologydimension.md) | 35 | `declaration-track:d6670b0ad874e2e3e898a5042df46fa36d09f8af3709dd69e6c5f859200c0770` |
| 4 | `structure` | [InducedRealMapCertificate](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/inducedrealmapcertificate.md) | 40 | `declaration-track:d691f63baa99ce1db56fae06625f0487c0780be154045a445edc3f170be16c53` |
| 5 | `structure` | [RankPreservationCertificate](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/rankpreservationcertificate.md) | 49 | `declaration-track:6666e3ce82c647da7146d39c1a058ccb66f49b1bf41abf222afbafa67f593582` |
| 6 | `theorem` | [rank_preservation_torsion_free](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/rank-preservation-torsion-free.md) | 56 | `result-track:489e023efc4c3f9b0525418b948b2ad78c20b7b52c4b3183a3659997edf1288c` |
| 7 | `theorem` | [rank_preservation_rank_eq_dimension](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/rank-preservation-rank-eq-dimension.md) | 62 | `result-track:db94b658db484a6a40af8bd19543673a5622740a073bfb0b05d41242ca28e83a` |
| 8 | `theorem` | [rank_preservation_induced_map_isomorphism](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/rank-preservation-induced-map-isomorphism.md) | 68 | `result-track:af586fa60208a868f45f8bd21bc518dae886aadb51c011f965f18a81bee4785b` |
| 9 | `theorem` | [rank_preservation_certificate_sound](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/rank-preservation-certificate-sound.md) | 74 | `result-track:d0da75f95a05c46353d9a4e332b44e895f5de59ae98b2027f720a2fc6bb76256` |
| 10 | `theorem` | [rank_preservation_through_boundary_calculus](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/rank-preservation-through-boundary-calculus.md) | 89 | `result-track:ea09f42e623565cd55f64f5772a9f1d2e70820095f5f0ec997ebbaf3aa4bd876` |
| 11 | `def` | [FiniteRankPayloadOwnsRankPreservation](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/finiterankpayloadownsrankpreservation.md) | 97 | `declaration-track:e3fe828705ff666f0c19fcde46a2298c280cd73a3ea244ba0b794903738384bd` |
| 12 | `theorem` | [finite_rank_payload_authority_attempt_fails](../../../../RealFunctions/RankPreservationNamespaced.lean/declarations/finite-rank-payload-authority-attempt-fails.md) | 104 | `result-track:19e5c0b63b663f8c6aa2b1d73808c2378d8fb110b32d2f53fa08950d27a5d65c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b2bc392dc5e97729695c21f4b6b25f69029220d90d43ebdf824801ce2808dc44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/RankPreservation/Variant30a9d0acd67a85a4225a2ff359d79e2cacc1fd5b5963ba40086c727587eb0cfe.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/RankPreservation/Variant30a9d0acd67a85a4225a2ff359d79e2cacc1fd5b5963ba40086c727587eb0cfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
