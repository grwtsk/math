# Verification target: Observation Representation Fixtures

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "be76916bf380a7c1aebcb838f6bd42a024bddcda",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ObservationRepresentationFixtures.lean/index.md) · [Full source](../../../../Combinatorics/ObservationRepresentationFixtures.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `be76916bf380a7c1aebcb838f6bd42a024bddcda`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.ObservationRepresentation` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [emptyFamily](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/emptyfamily.md) | 30 | `declaration-track:513b65bdb0283651a3a216cd43c5f72e4c44f8550f5dbfded563cbd7ef689b35` |
| 2 | `def` | [emptyRepresentation](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/emptyrepresentation.md) | 35 | `declaration-track:0d4c0858fe95e19a18fc4caa137662f16edc9b77c9c73dc9a247176c5530637e` |
| 3 | `def` | [unitRepresentation](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/unitrepresentation.md) | 42 | `declaration-track:da9b97cfc426d5cc6a433944e2575c80f2326a862c24c67b73fc0662c8dcfaef` |
| 4 | `theorem` | [empty_not_factors_through_unit](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/empty-not-factors-through-unit.md) | 49 | `result-track:9cd8a67cf7202b3f269ae4187c0422eda8a41deb59d6e9cbaf73393a7b61efaf` |
| 5 | `theorem` | [empty_not_minimal](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/empty-not-minimal.md) | 54 | `result-track:737df37ec469f23b0ee7ce6388f9092bc753563ebba4ffe675dc3adc6a810628` |
| 6 | `theorem` | [empty_reachable_not_minimal](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/empty-reachable-not-minimal.md) | 61 | `result-track:30388e8c5ef0609b9ebfc689b9425551f43d25e58b73e90fc228655b161f4f6c` |
| 7 | `theorem` | [empty_vectors_minimal](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/empty-vectors-minimal.md) | 70 | `result-track:95897a68242d8b48bbc7f07817918e35ba96b97ff5281064a5ee3d8141d28302` |
| 8 | `def` | [catalogFamily](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalogfamily.md) | 78 | `declaration-track:474883dbacc593676fef53e5d1358de4b6e42907931539652596c9d81a3f4c81` |
| 9 | `def` | [catalogRepresentation](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalogrepresentation.md) | 85 | `declaration-track:5c9862eb751e34953bafeab9c817dbe69da07a1173b46fc0cfa599a66da80eb5` |
| 10 | `theorem` | [catalogRepresentation_minimal](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalogrepresentation-minimal.md) | 95 | `result-track:72cf99a4ef5dcc5fc2d393a483422f244461e550bb7808615338b428f15d2252` |
| 11 | `theorem` | [catalog_competitor_card_lower_bound](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalog-competitor-card-lower-bound.md) | 109 | `result-track:3a82f067559cb9fbd3d0448884f776baabccaebd3821dcaefbd964b72e18dbab` |
| 12 | `def` | [catalogQuine](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalogquine.md) | 130 | `declaration-track:5672b85f4016f4f7bab32fa431313dfeb84f8b15e57f54027c1e0a53d8f4a3e9` |
| 13 | `theorem` | [catalog_representatives_not_unique](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalog-representatives-not-unique.md) | 143 | `result-track:1abd81d68fc9dee59a3628826b7925a89dce461a16fb5d4533e814578ac2dfd7` |
| 14 | `theorem` | [catalog_projection_readout](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalog-projection-readout.md) | 152 | `result-track:18414f6314df2ed989910ab40f7caec62a0ca00d1e3bdccbf358b0f51fcf6cba` |
| 15 | `theorem` | [catalog_vector_not_realizable](../../../../Combinatorics/ObservationRepresentationFixtures.lean/declarations/catalog-vector-not-realizable.md) | 162 | `result-track:3388b431e11563dcdc0417db391a98c4d0a76231f34e8dcba7aa3be7d9a5364e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=42b865e8643d1838e24b4624b40df2e6b8eb06668837c81ee2ee904657b66944 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ObservationRepresentationFixtures/Variant68b2cf53fb17baeaafa3caffdc4a75634726a6099c4cb90fa0971317da955f82.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
