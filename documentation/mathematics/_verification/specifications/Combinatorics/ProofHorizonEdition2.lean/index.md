# Verification target: Proof Horizon Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c338b0f763a09aad35ea28363b7060d6839f1c30",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ProofHorizonEdition2.lean/index.md) · [Full source](../../../../Combinatorics/ProofHorizonEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c338b0f763a09aad35ea28363b7060d6839f1c30`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Polarity](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/polarity.md) | 13 | `declaration-track:9088cbd07d78d96b210275750411c612d0f7bd5868f40367bc4028c6ae5beb26` |
| 2 | `structure` | [FiniteProofAperture](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/finiteproofaperture.md) | 21 | `declaration-track:c3162b2b3e623a4a1654e591b85eecd25bdb1e2a3e082c9caf3019a7ae82a305` |
| 3 | `def` | [FiniteProofAperture.HasAccepted](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/finiteproofaperture-hasaccepted.md) | 32 | `declaration-track:456dcd2bbd45eaa81ca37bbd58e592c031a8c5b5216e6172f5a6774f34178fdb` |
| 4 | `def` | [LocallyUnresolved](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/locallyunresolved.md) | 37 | `declaration-track:2ef98485be7431e687b76ca67a685ad276ea82505d8b4cf305d277c0e7e15ca1` |
| 5 | `def` | [FiniteProofAperture.checkUnresolved](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/finiteproofaperture-checkunresolved.md) | 41 | `declaration-track:7a523740f562f206dba0c0680c3a13c46f9468b8aa26301d38bfbfa712b118bd` |
| 6 | `theorem` | [FiniteProofAperture.checkUnresolved_eq_true](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/finiteproofaperture-checkunresolved-eq-true.md) | 48 | `result-track:4cd28feb84e7e242c9f072199937a2fd272f410e85eb539e5848f7d8d8dcd395` |
| 7 | `def` | [FiniteProofAperture.SoundFor](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/finiteproofaperture-soundfor.md) | 55 | `declaration-track:e4e7360a9673ebccf68adfa4f288ec8194fb804ddd253d075bab4651c0ea8b8c` |
| 8 | `theorem` | [locallyUnresolved_iff_all_rejected](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/locallyunresolved-iff-all-rejected.md) | 61 | `result-track:6c6594cb4c050a74fbe0d129ddb49123ab8e29fa8623cb67227eb40fbaa8c596` |
| 9 | `theorem` | [FiniteProofAperture.not_both](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/finiteproofaperture-not-both.md) | 79 | `result-track:b66c57ddd1ec177bece129c7d71aaeefe6527c13e4da0aafef9854bb78a15f69` |
| 10 | `def` | [emptyProofAperture](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/emptyproofaperture.md) | 87 | `declaration-track:2574a1a6e28b0aad6741382ac93dfe07ff1c2daefa9bc70a577d55313ee20374` |
| 11 | `theorem` | [emptyProofAperture_unresolved](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/emptyproofaperture-unresolved.md) | 94 | `result-track:972540b9b30bf13b6af69b1b0daa54849d4c476ea0ea07f8b69b47a47e0f6e80` |
| 12 | `theorem` | [emptyProofAperture_sound](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/emptyproofaperture-sound.md) | 98 | `result-track:343445c2534651c90112b621582220853a7281ca6abad5bb0ca5885195ae99a3` |
| 13 | `theorem` | [local_unresolvedness_does_not_imply_truth](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/local-unresolvedness-does-not-imply-truth.md) | 103 | `result-track:53ba8d5880166ae480a6a717e55ec306f985b684983927be0f1ca7601baf1bfa` |
| 14 | `theorem` | [local_unresolvedness_does_not_imply_falsehood](../../../../Combinatorics/ProofHorizonEdition2.lean/declarations/local-unresolvedness-does-not-imply-falsehood.md) | 110 | `result-track:b24e33778acc663a2cb92a65d24b768c254cd5fbb81654a264b478d9b9c5c780` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4943ff0b3491f90fd25156b4f439c24d160593eed9e5b24224229e3d0b0c924e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ProofHorizon/Variant856178a07398d3077591cc6ab66573f01399ad27d176685ac2e52303b1b996da.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
