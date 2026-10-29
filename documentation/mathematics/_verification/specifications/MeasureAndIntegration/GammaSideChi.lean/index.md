# Verification target: Gamma Side Chi

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/GammaSideChi.lean/index.md) · [Full source](../../../../MeasureAndIntegration/GammaSideChi.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07b64e0a553cf16d7498fb2ec52901ec7537d4ab`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ThmE.Hypotheses` — import line 15; external provider; requires a separately pinned dependency.
- `Zeta23.RvM.GammaSide` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Deligne` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [archChi](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/archchi.md) | 31 | `declaration-track:52b449aafb51c59fa291a06d165c5073b41844a13c06f340de33e8ea5bf424aa` |
| 2 | `lemma` | [q_cpow_ne_zero](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/q-cpow-ne-zero.md) | 33 | `result-track:1e0d0a9766a3a2a968149d9c13d3e97d52e680f89bd23b2e45db312bd687f1c1` |
| 3 | `lemma` | [archChi_differentiableOn](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/archchi-differentiableon.md) | 37 | `result-track:a3a24b9a948d4b8a85aa52d0012f74e01172825333f2d1716d5f20629110c1d9` |
| 4 | `lemma` | [archChi_ne_zero](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/archchi-ne-zero.md) | 59 | `result-track:0d6291afbee9c3e67689763e7112c3592c9a4d01335337b1c14b59dbd4e9ae32` |
| 5 | `lemma` | [logDeriv_archChi_differentiableOn](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/logderiv-archchi-differentiableon.md) | 67 | `result-track:7dbf3a6991be4180444295730c85b0c3daaa15e8f8b2d3b19eadeb269858b8ce` |
| 6 | `theorem` | [logDeriv_archChi](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/logderiv-archchi.md) | 77 | `result-track:8878fd6de389acbb7d914c9d074f030d7727aa0ba8ec555cf095fbaa659c8151` |
| 7 | `theorem` | [re_logDeriv_archChi_half](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/re-logderiv-archchi-half.md) | 130 | `result-track:b728738de1aeb1182f82d1e40583a244abd447f76002a4346405c0e24327c089` |
| 8 | `theorem` | [gammaSideChi](../../../../MeasureAndIntegration/GammaSideChi.lean/declarations/gammasidechi.md) | 147 | `result-track:b802545d7a8cfb627db8119de8304b674471b5e1c07628fa2eb9c3a4a1cb84e1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=79b4662ccfc2a1fb668171f4f1796e2101fb2f3c7a9fdb1bcc1a310c3b653a4e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
