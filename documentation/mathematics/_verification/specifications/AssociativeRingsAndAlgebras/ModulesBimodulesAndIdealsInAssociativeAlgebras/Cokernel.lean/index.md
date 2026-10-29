# Verification target: Cokernel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9f2c84e6cd05a60f6a9ef3b89484c3482715f38",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9f2c84e6cd05a60f6a9ef3b89484c3482715f38`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Presentation.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CokernelData](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/cokerneldata.md) | 45 | `declaration-track:5a6a034eb5a331f53da61209c0289ab8d2df71e6d8b728f7498e174bb1b5042a` |
| 2 | `def` | [CokernelData.ofSection](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/cokerneldata-ofsection.md) | 53 | `declaration-track:bd57e0a58ee17a675d265b4f6927254d222060a48801598902b3bc493370cad1` |
| 3 | `instance` | [nonempty_cokernelData](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/nonempty-cokerneldata.md) | 59 | `declaration-track:58439d5ca4ddc92e4ad2dcf634f8220e60d6c622a4a477ad5fd14e36bcb1271c` |
| 4 | `def` | [cokernelRelations](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/cokernelrelations.md) | 71 | `declaration-track:21f11d08d0f61ee0e388714f8bf2770aa7b29fa5aaf246f1d1f845eb399d58b9` |
| 5 | `def` | [cokernelSolution](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/cokernelsolution.md) | 81 | `declaration-track:b734323b34efcdfee8f08685f1f517330615f37b11c9a44b122a6996422fe1ba` |
| 6 | `def` | [isPresentationCore](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/ispresentationcore.md) | 98 | `declaration-track:ec9be7ca0b4c604c6db15812e89e081eb183fef08959870b5409003e65161e41` |
| 7 | `lemma` | [isPresentation](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/ispresentation.md) | 119 | `result-track:ed01b77407070b25481196e666bedc25c9ac1816df0b926e6722b1739b9851c8` |
| 8 | `def` | [cokernel](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/cokernel.md) | 128 | `declaration-track:652c3381860c8dbcee058355e656243bdd82d189e3772c5162c55281bdbd6da9` |
| 9 | `def` | [ofExact](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/Cokernel.lean/declarations/ofexact.md) | 137 | `declaration-track:039579f0088fbc54070de132e13dd6d1387231fb6061d10ac7d11d7ca6e234ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ba50aca69e873a01fa982945f7748982926f5fa80cefffc158df3e3f2f937192 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Cokernel/Variant0ed9334eff0b79606dba9b92b2692b2decc90e2e21474e25d2f49a1db9707577.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
