# Verification target: With One Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bc806116eb68f48803d344ab80a00992a4c55ab",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bc806116eb68f48803d344ab80a00992a4c55ab`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.WithOne.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instInvolutiveInv](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/instinvolutiveinv.md) | 39 | `declaration-track:26cecd24e3ef9eb963fe99991620e584a47385f334cf67a70ae7ddd20d7ff484` |
| 2 | `def` | [coeMulHom](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/coemulhom.md) | 46 | `declaration-track:43a63d348e98d2b48a46a0054c751b77af01c2644ea5dac4d212f7f2b45c54df` |
| 3 | `def` | [lift](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/lift.md) | 58 | `declaration-track:bd2f82c4eb45f0f047eec316cbab2e5eff13e658703259b622ce827fb7296ce6` |
| 4 | `theorem` | [lift_coe](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/lift-coe.md) | 71 | `result-track:b4c1b1545ad984239e8019c086451bbdc71ac642c2e246b81da0ccf3b4fddd95` |
| 5 | `theorem` | [lift_one](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/lift-one.md) | 75 | `result-track:cf338b127be7292af1459672166c83ef5dda7a9807f4c3acd679ebb2e7959e6d` |
| 6 | `theorem` | [lift_unique](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/lift-unique.md) | 79 | `result-track:b4d6daa85ea1eaec2f99a0448666568e6c676efe4232ef0aac61b39191a994b5` |
| 7 | `def` | [map](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/map.md) | 92 | `declaration-track:d7ecdb00bcb32105155e70d50db731755937656e958fae92bd7cead1b81dd15b` |
| 8 | `theorem` | [map_coe](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/map-coe.md) | 96 | `result-track:977fad765ad11136601efd63b04a3a6813f65d66192bd7af4f176291ab9d0b87` |
| 9 | `theorem` | [map_id](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/map-id.md) | 100 | `result-track:9189390926e9383f5a744795f04eb64941c5750bdda7483895b03e4448ea09c3` |
| 10 | `theorem` | [map_map](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/map-map.md) | 105 | `result-track:ff508bab600bea16c5aa76c012cffec02cbaa403f7259fdc74de48e39f72849c` |
| 11 | `theorem` | [map_comp](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/map-comp.md) | 109 | `result-track:422bb819d2f06a25eecabab0a330bc5a9493ee30692b52be05229b749e00ea01` |
| 12 | `def` | [With One Basic Namespaced Source Edition1](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/withonecongr.md) | 114 | `declaration-track:7ddee51a64ce8c03277e597a13ad4c203fd19cccdc524207c0a0400451422f35` |
| 13 | `theorem` | [With One Basic Namespaced Source Edition1](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/withonecongr-refl.md) | 121 | `result-track:331b6393fb74d6a31019d166eee374dd433f2859843ea9f97474c8bbc704fb3d` |
| 14 | `theorem` | [With One Basic Namespaced Source Edition1](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/withonecongr-symm.md) | 125 | `result-track:a050aae67d44e6e1f3b8525a0f1a79b50fbc15c764ece6ca6e885cce1067caa5` |
| 15 | `theorem` | [With One Basic Namespaced Source Edition1](../../../../GroupTheoryAndGeneralizations/WithOneBasicNamespacedSourceEdition1.lean/declarations/withonecongr-trans.md) | 130 | `result-track:efa2c657089a7ed5dffc28516c49ca7b34c75c53685e755fa61cc91baf10a1c3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5e0add52158781045c547f70cdb76be107794104071500e3743162a3ffa12e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Basic/Variantb1acea7c4395565ece79005f1c2e4e7d62600a818d5381ae42e570a2a2212a43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
