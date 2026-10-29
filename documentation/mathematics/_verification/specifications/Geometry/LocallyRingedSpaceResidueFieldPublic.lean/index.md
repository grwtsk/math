# Verification target: Locally Ringed Space Residue Field Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe72d7723e991571d9b597d35428952e598fa182",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/index.md) · [Full source](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe72d7723e991571d9b597d35428952e598fa182`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean.json)

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
| 1 | `def` | [residueField](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residuefield.md) | 45 | `declaration-track:3238d38ffee713194b7f48d99df9dd725a7eecd000447ac3207a77575783953b` |
| 2 | `instance` | [(anonymous)](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/instance.md) | 48 | `declaration-track:2e08e8ec20a9a7edb7ad71facf64d57830f1008c0776c81a3717232ca5aef3a7` |
| 3 | `def` | [residue](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residue.md) | 52 | `declaration-track:7c7a407d05b227c6eddadbf5f1fad4908ea17dbe745d1b32a21de059f24585a2` |
| 4 | `lemma` | [residue_surjective](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residue-surjective.md) | 55 | `result-track:a29649eeb71567417ec407c415f2b10ec3164de7ca203b0d47379e157b95b635` |
| 5 | `instance` | [(anonymous)](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/instance-source-edition-2.md) | 58 | `declaration-track:ebb65d787df0f3a7fd839125ef67fac9c71d59d7e7f6d11343554011598de305` |
| 6 | `def` | [evaluation](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-source-edition-2.md) | 68 | `declaration-track:83f0cefa8853405d604c767a7cbf9f3a14beacb2f46a317c70939f3d4ecbb04f` |
| 7 | `def` | [Γevaluation](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation.md) | 72 | `declaration-track:27b6fd884933aae4ac35926db732c14c445c9d2377244bb9ba44ddfeea29b7e4` |
| 8 | `lemma` | [evaluation_eq_zero_iff_notMem_basicOpen](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen-source-edition-2.md) | 76 | `result-track:c2c054ba3368d26172058288a8a7c088c48f8bf21e63a2e7a37b123acda4e8c6` |
| 9 | `lemma` | [evaluation_ne_zero_iff_mem_basicOpen](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-ne-zero-iff-mem-basicopen-source-edition-2.md) | 81 | `result-track:efedabffba890815dda2836c44f4988b0918af9b021ad0734e8c39aace0ff988` |
| 10 | `lemma` | [basicOpen_eq_bot_iff_forall_evaluation_eq_zero](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/basicopen-eq-bot-iff-forall-evaluation-eq-zero.md) | 85 | `result-track:f7ffdef2cad4f5dc2a8b68cf8cc4cb4dd5684f30bf2e7654855bb501de0ebf2b` |
| 11 | `lemma` | [Γevaluation_eq_zero_iff_notMem_basicOpen](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-eq-zero-iff-notmem-basicopen.md) | 92 | `result-track:02057220ae20a04ed56a1feff2909cabd92916ed0477c74267fbf5cca1191daf` |
| 12 | `lemma` | [Γevaluation_ne_zero_iff_mem_basicOpen](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-ne-zero-iff-mem-basicopen.md) | 96 | `result-track:7f58b5da6f20a8e7e8fa536f605860aae199290095e423683eb00b779ef4e3eb` |
| 13 | `def` | [residueFieldMap](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residuefieldmap.md) | 104 | `declaration-track:2e472928b2599b91ea6fed64dd87dbed933de0adc036c0cf74b74e9dc532c9e7` |
| 14 | `lemma` | [residue_comp_residueFieldMap_eq_stalkMap_comp_residue](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residue-comp-residuefieldmap-eq-stalkmap-comp-residue.md) | 108 | `result-track:12d8ce86854c7952778dba614d116724be31994f762d99ebe3dc41c3f6b591f9` |
| 15 | `lemma` | [residueFieldMap_id](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residuefieldmap-id.md) | 114 | `result-track:3f3a226d2a2c7c184f89d0ab980855f3edafe99ac52392cc4f3575564d872ccb` |
| 16 | `lemma` | [residueFieldMap_comp](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/residuefieldmap-comp.md) | 121 | `result-track:55fb2f829c45d7ef6ecf7e5e472fe89870818cbb6fa17282f7482774506be561` |
| 17 | `lemma` | [evaluation_naturality](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-naturality-source-edition-2.md) | 129 | `result-track:71c0b55dd7c8c2d557d038929478a4b0e9c76a9b66e489028f4d20d73d4e7dd2` |
| 18 | `lemma` | [evaluation_naturality_apply](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-naturality-apply-source-edition-2.md) | 141 | `result-track:95d68753e8a30341b12454ef9baae67a41be50851b26ce9bfe03aef5f3712e06` |
| 19 | `lemma` | [Γevaluation_naturality](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-naturality.md) | 149 | `result-track:3636adf6a69596ebb5ba89081df77dd9e4e566216dc52cd9d26c87c55fd90c07` |
| 20 | `lemma` | [Γevaluation_naturality_apply](../../../../Geometry/LocallyRingedSpaceResidueFieldPublic.lean/declarations/evaluation-naturality-apply.md) | 154 | `result-track:2e659b3f7a8438f63eefc4d0c4d1f7708361a80ad191d12dbe69d3776090a1e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3af83f0317a18b631fc3ab54cf74bbfb8e9cd2d83bbaa38cbcfebd7eb930ade6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean","GRWTSK/_verification/specifications/Geometry/AlgebraicGeometry/ResidueField/Variantfe4b24611fe4d13efd72dfb2058510fb7f2da4c7d3ee46f38ef5d9a17803af37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
