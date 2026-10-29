# Verification target: Extension

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f0063b3db3f570087517cc7c85e4e890c6bf144",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Extension/Variant046d4125d7de0271c8ab2db7516e9354e4a30e436fc78f6b623947e8750489f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Extension.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Extension.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f0063b3db3f570087517cc7c85e4e890c6bf144`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Extension/Variant046d4125d7de0271c8ab2db7516e9354e4a30e436fc78f6b623947e8750489f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Extension/Variant046d4125d7de0271c8ab2db7516e9354e4a30e436fc78f6b623947e8750489f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Ideal` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsExtension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Extension.lean/declarations/isextension.md) | 37 | `declaration-track:1a550884121b2c070e7edbd5d7523e709ed1b0d8f17e1c13f36bf36a8ce81543` |
| 2 | `structure` | [Extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Extension.lean/declarations/extension.md) | 45 | `declaration-track:b2f210211404c2e7253159072535dbcdf61b00c4b641ca232abc2ece40420223` |
| 3 | `def` | [IsExtension.extension](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Extension.lean/declarations/isextension-extension.md) | 59 | `declaration-track:0e520f791e486f9e5c4422b71a257cdcec25d509125cfa5d0da00f2944c1e0ee` |
| 4 | `theorem` | [isExtension_of_surjective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/Extension.lean/declarations/isextension-of-surjective.md) | 64 | `result-track:8bbf1cf244c4e581e2e8f90e5be47ccf3103761600eadd8326427c84565aa742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff7fa6a6134816bcc9eb9f690d06f555b2b9a1e25d3bb47c85d7846204b6d3dd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Extension/Variant046d4125d7de0271c8ab2db7516e9354e4a30e436fc78f6b623947e8750489f3.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Extension/Variant046d4125d7de0271c8ab2db7516e9354e4a30e436fc78f6b623947e8750489f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
