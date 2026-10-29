# Verification target: Is Bounded At Im Infty Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "323d46764a6ba0b4d8b09abcfb00a69cfc57f0eb",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant64867a840407bc72a2bdb3d02afa9be4b061b71ca71cd0179987daa562728a85.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/IsBoundedAtImInftyNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/IsBoundedAtImInftyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `323d46764a6ba0b4d8b09abcfb00a69cfc57f0eb`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant64867a840407bc72a2bdb3d02afa9be4b061b71ca71cd0179987daa562728a85.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant64867a840407bc72a2bdb3d02afa9be4b061b71ca71cd0179987daa562728a85.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.UpperHalfPlane.FunctionsBoundedAtInfty` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Order.Lattice` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.EisensteinSeries.UniformConvergence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ModularForms.Identities` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [summable_norm_eisSummand](../../../../NumberTheory/IsBoundedAtImInftyNamespaced.lean/declarations/summable-norm-eissummand.md) | 43 | `result-track:aeeb2f91573b242d866831bbcd2cd466a7218f068e0431863f8ed9afc6954044` |
| 2 | `lemma` | [norm_le_tsum_norm](../../../../NumberTheory/IsBoundedAtImInftyNamespaced.lean/declarations/norm-le-tsum-norm.md) | 53 | `result-track:34ed7ae7113bc478336ee790896bf9c48624e036300af74977c202cc2d38d25a` |
| 3 | `theorem` | [isBoundedAtImInfty_eisensteinSeries_SIF](../../../../NumberTheory/IsBoundedAtImInftyNamespaced.lean/declarations/isboundedatiminfty-eisensteinseries-sif.md) | 63 | `result-track:e49090ebf3c9e47a42a5f4c3dbe2fc0f62753f9dc6f26a6e427ef81361a8206b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ea6fe6a2cee925f640bfe809fe9c7fcd639527a48a1860573f6224658ee463d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant64867a840407bc72a2bdb3d02afa9be4b061b71ca71cd0179987daa562728a85.lean","GRWTSK/_verification/specifications/Analysis/AsymptoticAnalysis/IsBoundedAtImInfty/Variant64867a840407bc72a2bdb3d02afa9be4b061b71ca71cd0179987daa562728a85.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
