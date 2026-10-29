# Verification target: Comparisons

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a817d2ba199a4e1feba27edddc06c12f614e9153",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant46b76dfd898496d3082e5182e604f197449db6cd20732996e6c85353d83a99c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a817d2ba199a4e1feba27edddc06c12f614e9153`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant46b76dfd898496d3082e5182e604f197449db6cd20732996e6c85353d83a99c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant46b76dfd898496d3082e5182e604f197449db6cd20732996e6c85353d83a99c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Prismatic.Cohomology` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ComparisonIso](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/comparisoniso.md) | 17 | `declaration-track:5ed8f0b5336ef1ffd7fefcca93279654cd82de556aaa141f3a04cbc978003456` |
| 2 | `structure` | [CrystallineComparisonCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate.md) | 24 | `declaration-track:ff97ce400a03be5ab75ee7f11fd8043dc4fdab906d56f0c47f9fcb8775e961ae` |
| 3 | `structure` | [HodgeTateComparisonCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate.md) | 35 | `declaration-track:912d28fb4c27b68dd92e7b234714c2d0322b40302440be9c4d4261dbb697ebe7` |
| 4 | `structure` | [DeRhamComparisonCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/derhamcomparisoncertificate.md) | 46 | `declaration-track:fc2e998043231d851860b72a332874f3b6680becddb21cd9232e576577218cbe` |
| 5 | `structure` | [EtaleComparisonCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/etalecomparisoncertificate.md) | 55 | `declaration-track:9c4f1447fa7fc93de18ae33575ffef1c89cfcd0e4a8534fc0aad890f9220db45` |
| 6 | `structure` | [BaseChangeComparisonCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/basechangecomparisoncertificate.md) | 64 | `declaration-track:daf9827007a9ce6509e9fbf2dbf39b0f13359c733613669ecb51dd23390b9021` |
| 7 | `structure` | [FrobeniusImageCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/frobeniusimagecertificate.md) | 73 | `declaration-track:e42304c38f966b91fce630326af16a12739ff072146466e5248a8b698457ba5a` |
| 8 | `def` | [CrystallineComparisonCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-certifiedformajorproof.md) | 82 | `declaration-track:97aeb183e7b45f72bf11a2c41570091b1b0cde20e047c1fbdf929bfdec22fab7` |
| 9 | `theorem` | [CrystallineComparisonCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-certifiedformajorproof-of-fields.md) | 89 | `result-track:ca0b376c083ffc5d79d9e3c9df6211ad00718c07ca675809f8c0491002eb7407` |
| 10 | `def` | [HodgeTateComparisonCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-certifiedformajorproof.md) | 97 | `declaration-track:e733175c97436b0e2a7c4c2bbfa35ef28f45f462cc326b7c3334ca6888c01188` |
| 11 | `theorem` | [HodgeTateComparisonCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-certifiedformajorproof-of-fields.md) | 104 | `result-track:a3fda47b9b69cc8c3efeb8e6e8d60e9db10eac85324ae62673feea986732feae` |
| 12 | `def` | [DeRhamComparisonCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/derhamcomparisoncertificate-certifiedformajorproof.md) | 112 | `declaration-track:3cbcb22221d7e07265d980ed85b750fe300a0640a9f99da77e0860c64de6a1db` |
| 13 | `theorem` | [DeRhamComparisonCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/derhamcomparisoncertificate-certifiedformajorproof-of-fields.md) | 118 | `result-track:69fccfbdc27e7eb2ab3ec6b53cbed540b39aaf3bc1375587a02821f7a836ba28` |
| 14 | `def` | [EtaleComparisonCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/etalecomparisoncertificate-certifiedformajorproof.md) | 125 | `declaration-track:90691a9d8d1db6b038c750b7bdb34fe95c124fcab15ff1fd172689f3bfa2c49b` |
| 15 | `theorem` | [EtaleComparisonCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/etalecomparisoncertificate-certifiedformajorproof-of-fields.md) | 131 | `result-track:4ca48d7e593ba919c35da39699e15e895547183c3f2cbd8c4661d18fda8b4730` |
| 16 | `def` | [BaseChangeComparisonCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/basechangecomparisoncertificate-certifiedformajorproof.md) | 138 | `declaration-track:35ba33a57f7ecfceedff144b2b657d3f6c83f7afb5cc98de5e028d76b2adbfda` |
| 17 | `theorem` | [BaseChangeComparisonCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/basechangecomparisoncertificate-certifiedformajorproof-of-fields.md) | 144 | `result-track:19a3fec216e448e17fe1c8b311da126e539c6b10fbc6f2eeaadc7349156af27f` |
| 18 | `def` | [FrobeniusImageCertificate.certifiedForMajorProof](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/frobeniusimagecertificate-certifiedformajorproof.md) | 151 | `declaration-track:a97bef598c1d7bc5d003df2fa4e5febcf9f5f0a803c6249c02bd71cbd68cda0e` |
| 19 | `theorem` | [FrobeniusImageCertificate.certifiedForMajorProof_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/frobeniusimagecertificate-certifiedformajorproof-of-fields.md) | 156 | `result-track:26437b07774d3d333d6f6fdb07e865b508cdb1d0a20932bd6eacd408945f0f5e` |
| 20 | `def` | [CrystallineComparisonCertificate.certifiedForMajorProofWithCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-certifiedformajorproofwithcohomology.md) | 162 | `declaration-track:a166c8425c120bffc10d4e08f8d07591a2a3fe06fe8adf454da691fcc15c8b1d` |
| 21 | `def` | [HodgeTateComparisonCertificate.certifiedForMajorProofWithCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-certifiedformajorproofwithcohomology.md) | 168 | `declaration-track:0cb1eb73ed1b166e68c3e627ecb8bef05950565f66426feee8692037dae485c7` |
| 22 | `def` | [DeRhamComparisonCertificate.certifiedForMajorProofWithCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/derhamcomparisoncertificate-certifiedformajorproofwithcohomology.md) | 174 | `declaration-track:25453ad24f92d7baa4bbae2e363ab09803ba9082d5819cb31c88506af62b3339` |
| 23 | `def` | [EtaleComparisonCertificate.certifiedForMajorProofWithCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/etalecomparisoncertificate-certifiedformajorproofwithcohomology.md) | 180 | `declaration-track:aa7de80238aff4abcb947d9df975204cabfb5bd8bca17fdf25893494a82f5e80` |
| 24 | `def` | [BaseChangeComparisonCertificate.certifiedForMajorProofWithCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/basechangecomparisoncertificate-certifiedformajorproofwithcohomology.md) | 186 | `declaration-track:710eed697b65aa84db3fb5905d8bd481f4c19097d62716bc28549bc3e860a42e` |
| 25 | `def` | [FrobeniusImageCertificate.certifiedForMajorProofWithCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/frobeniusimagecertificate-certifiedformajorproofwithcohomology.md) | 192 | `declaration-track:3f690571bd04e5d97362508de4c67db8768a4669099e56a74eddc98ecabd5ac9` |
| 26 | `def` | [CrystallineComparisonCertificate.certifiedForMajorProofWithPullbackCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-certifiedformajorproofwithpullbackcohom.md) | 198 | `declaration-track:604b1b012ff907f206ce6772831ceb345fb6129b19fd1cfdae8ac5b8dd1b33a3` |
| 27 | `def` | [HodgeTateComparisonCertificate.certifiedForMajorProofWithPullbackCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-certifiedformajorproofwithpullbackcohomol.md) | 205 | `declaration-track:95d5f9ea3142673413fbbeedc76efdea65b284186c85b7bd72cca3f7f470f43c` |
| 28 | `def` | [DeRhamComparisonCertificate.certifiedForMajorProofWithPullbackCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/derhamcomparisoncertificate-certifiedformajorproofwithpullbackcohomology.md) | 212 | `declaration-track:2b76a167f9b53f21829e3bfae6f94f2bd5e8aa6b714b5a3e1c0c6bb856597cb0` |
| 29 | `def` | [EtaleComparisonCertificate.certifiedForMajorProofWithPullbackCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/etalecomparisoncertificate-certifiedformajorproofwithpullbackcohomology.md) | 219 | `declaration-track:6b45386befe0b60333d66d8b8ff88e567d15976e8ac853c3386f9c2f094253b5` |
| 30 | `def` | [BaseChangeComparisonCertificate.certifiedForMajorProofWithPullbackCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/basechangecomparisoncertificate-certifiedformajorproofwithpullbackcohomo.md) | 226 | `declaration-track:f7ddca804fcf52163ca7e2793f91ccff0074c90eea477f02f802c2d38635e673` |
| 31 | `def` | [FrobeniusImageCertificate.certifiedForMajorProofWithPullbackCohomology](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/frobeniusimagecertificate-certifiedformajorproofwithpullbackcohomology.md) | 233 | `declaration-track:ed548226337ab2bca56e6ba8424bab55ea779b2d3ba32f47ee5dff3956ba3713` |
| 32 | `theorem` | [HodgeTateComparisonCertificate.withCohomology_rejects_externalAssumption](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-withcohomology-rejects-externalassumption.md) | 240 | `result-track:e9c18ef51980507cf73e72a3a8ab88aec46c0769e881bb4f5ef1ff700a1d310a` |
| 33 | `theorem` | [HodgeTateComparisonCertificate.withCohomology_rejects_placeholderInput](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-withcohomology-rejects-placeholderinput.md) | 252 | `result-track:bd531781c11ee6207152d33a26cc54bab6009d56a2e52c356378214d508006f1` |
| 34 | `theorem` | [CrystallineComparisonCertificate.withCohomology_rejects_externalAssumption](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-withcohomology-rejects-externalassumpti.md) | 264 | `result-track:77b67f65f3a1896cb57f104e6ac165a1914f958190013c332207301151dc09bb` |
| 35 | `theorem` | [CrystallineComparisonCertificate.withCohomology_rejects_placeholderInput](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-withcohomology-rejects-placeholderinput.md) | 276 | `result-track:9d4f3283a64911afbf5e4547350c7159c0102b9a4eee9222f59b48ae9a4ecb55` |
| 36 | `theorem` | [HodgeTateComparisonCertificate.withPullbackCohomology_rejects_externalAssumption](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-withpullbackcohomology-rejects-externalas.md) | 288 | `result-track:b4372340111346a232b7ef39e1d83c0efc2a657579cdb1b1822a644ce0969aa9` |
| 37 | `theorem` | [HodgeTateComparisonCertificate.withPullbackCohomology_rejects_placeholderInput](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodgetatecomparisoncertificate-withpullbackcohomology-rejects-placeholde.md) | 300 | `result-track:8a43da4cb3e564c82d4669c8b84c0947b2f8d566db6f2d57ed2fb4c96be515ff` |
| 38 | `theorem` | [CrystallineComparisonCertificate.withPullbackCohomology_rejects_externalAssumption](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-withpullbackcohomology-rejects-external.md) | 312 | `result-track:bff1b0ba05260f0d47ad9586e50839a5c2abb74bf79ca652e26d763905f8deb7` |
| 39 | `theorem` | [CrystallineComparisonCertificate.withPullbackCohomology_rejects_placeholderInput](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystallinecomparisoncertificate-withpullbackcohomology-rejects-placehol.md) | 324 | `result-track:51b5f0f6a29820ba5412f590c387612d4654d50eb4f0edc831f75a0135d13cf4` |
| 40 | `theorem` | [crystalline_comparison](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/crystalline-comparison.md) | 336 | `result-track:2190c9234b6d52fc6cb51b4d377550ab6ba85e74da42276309d74aa4bdcb6320` |
| 41 | `theorem` | [hodge_tate_comparison](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/hodge-tate-comparison.md) | 342 | `result-track:27963c309591849e3cd4c4e2d4d5150d49545eff75e4336f6055f6b1380f1b3e` |
| 42 | `theorem` | [de_rham_comparison](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/de-rham-comparison.md) | 348 | `result-track:8d03fba92ea0aa458a99ce3ea12a8acc7c6f7c0e2574ce2cc0ce609ef696b3af` |
| 43 | `theorem` | [etale_comparison_for_perfect_prisms](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/etale-comparison-for-perfect-prisms.md) | 354 | `result-track:15b4959259bd4891934c253f5e3dffe059d17865ad20bf56e4a7e33a8db3c933` |
| 44 | `theorem` | [base_change_for_bounded_prisms](../../../../../ComputerScience/AlgorithmsInComputerScience/Comparisons.lean/declarations/base-change-for-bounded-prisms.md) | 360 | `result-track:ac3ec3ee3d993e332d1030512919ca1a947e75060048b36eb666e069736694ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b36965d5f838a5907b5c0606c510f1ffd87a979353943a72cc97a79d33247aa2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant46b76dfd898496d3082e5182e604f197449db6cd20732996e6c85353d83a99c1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Comparisons/Variant46b76dfd898496d3082e5182e604f197449db6cd20732996e6c85353d83a99c1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
