# Verification target: Structural Isomorphism Preserves Structure

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f943a0c21fd2faa0fc73acffcd19eed2808bfb21",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f943a0c21fd2faa0fc73acffcd19eed2808bfb21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.PolyHierarchy` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreservesStructure](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/preservesstructure.md) | 18 | `declaration-track:3cbdde035a1165f2fcd06802835dd672c4cb91d98209cfa14c13aa88dd3db12b` |
| 2 | `def` | [StructuralIso](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/structuraliso.md) | 32 | `declaration-track:dd4062233a7b0ca1c3d50cffc580f987de1488e80f7e5337e2a5d08a3daf6de9` |
| 3 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/instance.md) | 42 | `declaration-track:f483b9db41454041053c9e646d14307a4b186527342b04cdc7412695e134c96c` |
| 4 | `theorem` | [ext](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/ext.md) | 46 | `result-track:f5bf8da45b1edf9981409d5847ce8b61c658718189a187c17dec3abd685dc65c` |
| 5 | `def` | [refl](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/refl.md) | 52 | `declaration-track:3c65fa8f47d4eb1254cf88085fc4b806facb84d7086b93da81f6b1b7f3f12c8d` |
| 6 | `def` | [trans](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/trans.md) | 63 | `declaration-track:2173ce89f65efbaacc6e4418c4e4eeae699857cb00efa789aca749ccab7d840c` |
| 7 | `def` | [symm](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/symm.md) | 79 | `declaration-track:c25b2af990384442f79dabc393b2337df064527663fa7932347321b8f5fbf592` |
| 8 | `theorem` | [refl_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/refl-apply.md) | 95 | `result-track:4cd91825e323f43bce2458d34fe4e2c7060f78caa0e851ddec1689836dd605f9` |
| 9 | `theorem` | [trans_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/trans-apply.md) | 102 | `result-track:2ce22dddf99be9a956157839652f861f5512c34c843914ad8bed31e358124087` |
| 10 | `theorem` | [symm_apply_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/symm-apply-apply.md) | 110 | `result-track:57e25774851a106d5773235406994782758b4b08a56a9ba17451b4bd347630f6` |
| 11 | `theorem` | [apply_symm_apply](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/apply-symm-apply.md) | 117 | `result-track:387f6ac1cc58943f085626b8aed4917ed4524f556409203ffccc90dcf2dafa8c` |
| 12 | `abbrev` | [Aut](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/aut.md) | 126 | `declaration-track:4445326e685c91461f4d2d4a3065870878e2b40891956b668a53246e66d01328` |
| 13 | `def` | [elementOrbit](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/elementorbit.md) | 130 | `declaration-track:d7e8874683c50eb05e03bf43c43c16132760919575e4c793684ca8fb9521882b` |
| 14 | `theorem` | [element_mem_orbit](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/element-mem-orbit.md) | 135 | `result-track:731161b613c68ca98a972a9591f96dd269f5b9991714b10bca468b3334ce54ae` |
| 15 | `structure` | [IntrinsicLabel](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/intrinsiclabel.md) | 142 | `declaration-track:c7bc3f6d3ac3e1772253cec3895fbf0c9d20fd9bdf7899ad42b157b58f6030ee` |
| 16 | `theorem` | [intrinsic_label_obstruction](../../../../../ComputerScience/AlgorithmsInComputerScience/StructuralIsomorphismPreservesStructure.lean/declarations/intrinsic-label-obstruction.md) | 152 | `result-track:f21f2884ca42d0bdd6953486dece46e43e368228ae13a79a958fea5016250e93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba099b380cb27009e38c2050d8c8572fc4dc425349518ce07351cf30879ef908 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/StructuralIsomorphism/Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
