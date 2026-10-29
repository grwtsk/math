# Verification target: Topology Germ

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5068a55a9fccc919dfb3ece6352feaaed5302e9d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/TopologyGerm.lean/index.md) · [Full source](../../../../GeneralTopology/TopologyGerm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5068a55a9fccc919dfb3ece6352feaaed5302e9d`.

Source path: `GRWTSK/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Germ.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.NhdsSet` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.LocallyConstant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [value](../../../../GeneralTopology/TopologyGerm.lean/declarations/value.md) | 44 | `declaration-track:37cca79402fdfb9dd866fdf510c5a97700884cf56ec0d84166957dd23af96083` |
| 2 | `theorem` | [value_smul](../../../../GeneralTopology/TopologyGerm.lean/declarations/value-smul.md) | 47 | `result-track:07b2e1a54437c3b42ecd8409852dfe8a8f74ee5446e0a02c1a8a1b7cfb52c62d` |
| 3 | `def` | [valueMulHom](../../../../GeneralTopology/TopologyGerm.lean/declarations/valuemulhom.md) | 53 | `declaration-track:450857e0834feec1fff8688a616a7a83996d03f8d040762aba1f3fde40c5da83` |
| 4 | `def` | [valueₗ](../../../../GeneralTopology/TopologyGerm.lean/declarations/value-source-edition-2.md) | 59 | `declaration-track:3e5cae53168e28c12aa2a8381d360849ec7ff8591213b01b52ccfea70b4ae6f2` |
| 5 | `def` | [valueRingHom](../../../../GeneralTopology/TopologyGerm.lean/declarations/valueringhom.md) | 65 | `declaration-track:0d9b99517ef2d155d82501eb59f3a6b3de307d2b15de078b7e4517968663678b` |
| 6 | `def` | [valueOrderRingHom](../../../../GeneralTopology/TopologyGerm.lean/declarations/valueorderringhom.md) | 69 | `declaration-track:95872a49a3ee52ec4ab0ac95683127633d639bb02610e238236e432d3d578493` |
| 7 | `def` | [RestrictGermPredicate](../../../../GeneralTopology/TopologyGerm.lean/declarations/restrictgermpredicate.md) | 82 | `declaration-track:8d7fff278cd5bbaa44d8d10e49ea056b54a551c3071a402fd0b1ec84d5e0e905` |
| 8 | `theorem` | [Filter.Eventually.germ_congr_set](../../../../GeneralTopology/TopologyGerm.lean/declarations/filter-eventually-germ-congr-set.md) | 92 | `result-track:3cc715c75616f530fed63b7203f560a6d74cbcdc34fecc347cb6e4c1d4d22d1e` |
| 9 | `theorem` | [restrictGermPredicate_congr](../../../../GeneralTopology/TopologyGerm.lean/declarations/restrictgermpredicate-congr.md) | 102 | `result-track:506a6b21dc0c6409ab4c32bfabdf1db88dab9d67fb70d533f37e1827a17196dc` |
| 10 | `theorem` | [forall_restrictGermPredicate_iff](../../../../GeneralTopology/TopologyGerm.lean/declarations/forall-restrictgermpredicate-iff.md) | 110 | `result-track:9c3aa189b0a52edffe304155864a01c70d81b67e8679870cf3af70ebc36be012` |
| 11 | `theorem` | [forall_restrictGermPredicate_of_forall](../../../../GeneralTopology/TopologyGerm.lean/declarations/forall-restrictgermpredicate-of-forall.md) | 115 | `result-track:8ba1666775a05b5812158dba5bcede6773f12c7f7e09c85d7366c47996033e83` |
| 12 | `def` | [sliceLeft](../../../../GeneralTopology/TopologyGerm.lean/declarations/sliceleft.md) | 124 | `declaration-track:a8bf36a760b20c360e53b686d111ddfbae44f00709f9ae8d886d6d6c94c0d158` |
| 13 | `theorem` | [sliceLeft_coe](../../../../GeneralTopology/TopologyGerm.lean/declarations/sliceleft-coe.md) | 128 | `result-track:dfff626a0892823a0c28393c93845ea78d06b2e2a40d965a02a9629bad2005b8` |
| 14 | `def` | [sliceRight](../../../../GeneralTopology/TopologyGerm.lean/declarations/sliceright.md) | 134 | `declaration-track:4b312515417e49b47403a22ff9cf0ae3586cfc156fd35420c4c841bea0c9b32f` |
| 15 | `theorem` | [sliceRight_coe](../../../../GeneralTopology/TopologyGerm.lean/declarations/sliceright-coe.md) | 138 | `result-track:c2cbec9193e13a57e62feebab147d71bf02e77e5886963c10834ca562bfa3f27` |
| 16 | `lemma` | [isConstant_comp_subtype](../../../../GeneralTopology/TopologyGerm.lean/declarations/isconstant-comp-subtype.md) | 142 | `result-track:1f03924d4a5fc1905ae59dd00dc37a88e0fba3a1f81f9e1d54902af8f9fbf59e` |
| 17 | `lemma` | [IsLocallyConstant.of_germ_isConstant](../../../../GeneralTopology/TopologyGerm.lean/declarations/islocallyconstant-of-germ-isconstant.md) | 150 | `result-track:81919a5e3b10bc07a6b7fde34c2136da225f291b9318cabadf439a47b76232b9` |
| 18 | `theorem` | [eq_of_germ_isConstant](../../../../GeneralTopology/TopologyGerm.lean/declarations/eq-of-germ-isconstant.md) | 162 | `result-track:bf38d7b52eb0a22c518dc1bd911988b42548011eb34cee68b2d996e785c96a21` |
| 19 | `lemma` | [eq_of_germ_isConstant_on](../../../../GeneralTopology/TopologyGerm.lean/declarations/eq-of-germ-isconstant-on.md) | 167 | `result-track:f4a3be32b10267646a6e16cc2665d9989285bfcd92cacda3fd77dc41444a1742` |
| 20 | `theorem` | [Germ.coe_prod](../../../../GeneralTopology/TopologyGerm.lean/declarations/germ-coe-prod.md) | 175 | `result-track:70990f40f5c68d18c264e0310c8e8c3a62d4905dffa36befee1f5d4b586b6cb8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b59f978f834f652bf623008ee8ef32aef9a7ec2a24f8af0e0aea04c3006f2279 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Germ/Variantcc74732af55c41061d1b93e8b44a3d3aa018a876d0969e786fc6e5554fe3e946.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
