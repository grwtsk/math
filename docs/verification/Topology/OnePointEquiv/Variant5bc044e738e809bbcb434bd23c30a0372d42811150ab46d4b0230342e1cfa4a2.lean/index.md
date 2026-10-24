# Verification target: GRWTSK.Topology.OnePointEquiv.Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29ec0669301175c5db299579e7af96d6e8c149eb",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean/index.md) · [Full source](../../../../mathematics/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29ec0669301175c5db299579e7af96d6e8c149eb`.

Source path: `GRWTSK/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Projectivization.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Compactification.OnePoint` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [equivProjectivization](../../../../mathematics/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean/declarations/equivprojectivization--dc742359764edb3aa138eaff.md) | 44 | `declaration-track:dc742359764edb3aa138eaff28aab69a3a0a6493127e4a6f0a4a93c141594745` |
| 2 | `lemma` | [equivProjectivization_apply_infinity](../../../../mathematics/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean/declarations/equivprojectivization-apply-infinity--315c58d2c5bdb37af454f23f.md) | 65 | `result-track:315c58d2c5bdb37af454f23f4cdc187c89d977c959f94f9806b6ab655f5772f3` |
| 3 | `lemma` | [equivProjectivization_apply_coe](../../../../mathematics/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean/declarations/equivprojectivization-apply-coe--0d3637afb5fec1b24a29a792.md) | 70 | `result-track:0d3637afb5fec1b24a29a7928423db3c9e915965cd8ced5dc6c6a324ec53490c` |
| 4 | `lemma` | [equivProjectivization_symm_apply_mk](../../../../mathematics/Topology/OnePointEquiv/Variant5bc044e738e809bbcb434bd23c30a0372d42811150ab46d4b0230342e1cfa4a2.lean/declarations/equivprojectivization-symm-apply-mk--6666d10238621b959a19dd6f.md) | 75 | `result-track:6666d10238621b959a19dd6f21a71429d64811ca487632ca677797ce75231a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
