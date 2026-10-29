# Verification target: Finite Dimensional Laws Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7e62550db49dc316f7423d57afdbdd26f47d55b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7e62550db49dc316f7423d57afdbdd26f47d55b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean.json)

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
| 1 | `lemma` | [isProjectiveMeasureFamily_map_restrict](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/declarations/isprojectivemeasurefamily-map-restrict.md) | 52 | `result-track:f67f074f7008aeff861e159091036eb5b7b1acbfaed4787e1ef83213cbe2c6ba` |
| 2 | `lemma` | [isProjectiveLimit_map](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/declarations/isprojectivelimit-map.md) | 61 | `result-track:2daa389a14bad3be64a49ad26bae00227f49b5d3098d2cc5f25acf49c85f83ef` |
| 3 | `lemma` | [map_eq_iff_forall_finset_map_restrict_eq](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/declarations/map-eq-iff-forall-finset-map-restrict-eq.md) | 69 | `result-track:f4e816181107a0df31327ea8b4949c967cb5d40b54fd16da4f5b638d3968252d` |
| 4 | `lemma` | [identDistrib_iff_forall_finset_identDistrib](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/declarations/identdistrib-iff-forall-finset-identdistrib.md) | 85 | `result-track:000d6432a6d34bcdacba450c6e31c03bb0746353ce8ea3d8178338d4939824ca` |
| 5 | `lemma` | [map_restrict_eq_of_forall_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/declarations/map-restrict-eq-of-forall-ae-eq.md) | 98 | `result-track:e0073be5fd74bfd4d1484cbedaf1774425878349d775abbdbc9cc2124592324f` |
| 6 | `lemma` | [map_eq_of_forall_ae_eq](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteDimensionalLawsNamespacedPublic.lean/declarations/map-eq-of-forall-ae-eq.md) | 107 | `result-track:62fd72b7c141d1bb2fcc4a45497458e19acf334d05086bfab7c27d3e7c1593ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5241efd77b24a1721492ccafec582df6322e980d59a94de52f2b908c3393c74e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteDimensionalLaws/Variant55161427849c8cc6e77fbb65f5f398b4aaf499d358b9c8d7f406aa5580e49a4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
