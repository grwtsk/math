# Verification target: GRWTSK.Topology.OnePointEquiv.Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66e67e946ae7359f66a4f66362a3fe6d652a1a1c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean/index.md) · [Full source](../../../../mathematics/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66e67e946ae7359f66a4f66362a3fe6d652a1a1c`.

Source path: `GRWTSK/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivProjectivization](../../../../mathematics/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean/declarations/equivprojectivization--7ef75932231b096d8a46d876.md) | 36 | `declaration-track:7ef75932231b096d8a46d8764187a87577465744f388717e7912ef9fc19994f7` |
| 2 | `lemma` | [equivProjectivization_apply_infinity](../../../../mathematics/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean/declarations/equivprojectivization-apply-infinity--39e7cf1e72e033ca1bc0fad8.md) | 57 | `result-track:39e7cf1e72e033ca1bc0fad84f019846141591fb5b774b9f0ee76f77fc41f21a` |
| 3 | `lemma` | [equivProjectivization_apply_coe](../../../../mathematics/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean/declarations/equivprojectivization-apply-coe--531680c365949871650c3a7e.md) | 62 | `result-track:531680c365949871650c3a7e6899b8c26c3e3dbee5b455d81b9b6b55714cec9a` |
| 4 | `lemma` | [equivProjectivization_symm_apply_mk](../../../../mathematics/Topology/OnePointEquiv/Variant68165650368b4dff87976d50cbc4715bed7ccaecb659cff41a0eeefc79f63eec.lean/declarations/equivprojectivization-symm-apply-mk--639d568e47877976b30ad7e7.md) | 67 | `result-track:639d568e47877976b30ad7e7f739d0742bee367ab51b9399f13760abe73abd62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
