# Verification target: Fixtures Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "340c5b52f0aa5e4842b3d2471622f12b3c76923d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Fixtures/Variant88e0099872888ff866fce3a906c2bb3a6f7cd18bfb20f328620436630e2261ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FixturesNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/FixturesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `340c5b52f0aa5e4842b3d2471622f12b3c76923d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Fixtures/Variant88e0099872888ff866fce3a906c2bb3a6f7cd18bfb20f328620436630e2261ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Fixtures/Variant88e0099872888ff866fce3a906c2bb3a6f7cd18bfb20f328620436630e2261ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Card` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Field` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Archimedean.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../Combinatorics/FixturesNamespaced.lean/declarations/example.md) | 21 | `declaration-track:6d8f43bd1de86c3d7a328438138b4837c591b3830e796f4a2a50d4a052d73049` |
| 2 | `theorem` | [finite_shells_not_quartic](../../../../Combinatorics/FixturesNamespaced.lean/declarations/finite-shells-not-quartic.md) | 24 | `result-track:5df2642f73674793f24a5f33206d0456b627b20c637d83f18d7ccbcfc09410cc` |
| 3 | `def` | [SyntheticOccurrences](../../../../Combinatorics/FixturesNamespaced.lean/declarations/syntheticoccurrences.md) | 40 | `declaration-track:9d89f0dc4aad9124f74e411678198f9c251f18e7299e51af480b22590916a4b6` |
| 4 | `theorem` | [multiplicity_slots_three](../../../../Combinatorics/FixturesNamespaced.lean/declarations/multiplicity-slots-three.md) | 43 | `result-track:ef6ea012633ce1f26af102e605638842336378eadca673d3e8355a4cc8930ad9` |
| 5 | `theorem` | [point_count_two](../../../../Combinatorics/FixturesNamespaced.lean/declarations/point-count-two.md) | 49 | `result-track:90b0b717455f8ff038bfec851333fc3eae318ac97c240b6094ec8001d644c84f` |
| 6 | `theorem` | [forgetting_multiplicity_changes_count](../../../../Combinatorics/FixturesNamespaced.lean/declarations/forgetting-multiplicity-changes-count.md) | 52 | `result-track:4046da466df9484b9f1d982dd7cb1e01498d5df35bca8152f7c6af67dd3fb0ad` |
| 7 | `theorem` | [shifted_shell_boundary](../../../../Combinatorics/FixturesNamespaced.lean/declarations/shifted-shell-boundary.md) | 58 | `result-track:28e7c3ba0f5e68393095333daeea63220f089bba2bcfbf59a90b470e45774996` |
| 8 | `theorem` | [shifted_boundary_not_previous_shell](../../../../Combinatorics/FixturesNamespaced.lean/declarations/shifted-boundary-not-previous-shell.md) | 62 | `result-track:53e205a1525b7705d5372fc04ec59d5f8dbb694d1733a4a67a22ffb60e5b96ff` |
| 9 | `theorem` | [omitting_shift_changes_shell](../../../../Combinatorics/FixturesNamespaced.lean/declarations/omitting-shift-changes-shell.md) | 68 | `result-track:808ac8884bffae8808f980782531dff727602ebfe174caf3f146f58a0df65909` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c0cdd3927de40556c011309df9a85e62087e3f18a253e2c32b3163128e8e833 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Fixtures/Variant88e0099872888ff866fce3a906c2bb3a6f7cd18bfb20f328620436630e2261ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Fixtures/Variant88e0099872888ff866fce3a906c2bb3a6f7cd18bfb20f328620436630e2261ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
