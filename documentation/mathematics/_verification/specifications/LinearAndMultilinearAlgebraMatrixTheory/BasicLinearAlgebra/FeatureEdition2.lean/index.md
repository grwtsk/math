# Verification target: Feature Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1393123bdbfbd949d7c7058347427478b595a68",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1393123bdbfbd949d7c7058347427478b595a68`.

Source path: `GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `MathDiscovery.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarFeatureKernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/declarations/scalarfeaturekernel.md) | 24 | `declaration-track:08b120ee7fca2a4c57e2cd108650bd28df65b830f9f8332cb5470116382997bd` |
| 2 | `theorem` | [scalarFeatureKernel_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/declarations/scalarfeaturekernel-apply.md) | 59 | `result-track:248d033fcaceeb76b034da0412385dd8aa9dfe534ec69ff65631f0e6ecb83c0c` |
| 3 | `def` | [finiteFeatureKernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/declarations/finitefeaturekernel.md) | 65 | `declaration-track:cc1de78cb16818faed4604739429efa451192509212b68b48463371d529579ef` |
| 4 | `theorem` | [finiteFeatureKernel_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/declarations/finitefeaturekernel-apply.md) | 75 | `result-track:4cc829e7e4cc42707a7c3c66bcc1410979c5ea2d00c1da857b9779fd5f398d1f` |
| 5 | `structure` | [FiniteFeatureFamily](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/declarations/finitefeaturefamily.md) | 87 | `declaration-track:0302368aa6ab1ce0b1490143bca7a3cb818a580ec123303f487e592addba1acf` |
| 6 | `def` | [FiniteFeatureFamily.kernel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FeatureEdition2.lean/declarations/finitefeaturefamily-kernel.md) | 92 | `declaration-track:53f109d26c5d64fc7e302515c82467941e052fb242800aa548091047e374bf8a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a3325a917fc6bc0ac6e390faa0d3b5d799f712d03d4cb5ed1f729ed8ee3bf02c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean","GRWTSK/_verification/specifications/Analysis/Feature/Variantc86cdee603defee5b56b5cf7932a853ed9b4da773a6c22d737dd5c5282a2e855.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
